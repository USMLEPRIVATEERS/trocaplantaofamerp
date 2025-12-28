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


-- =============================================
-- PARTE 3: INSERIR ESTÁGIOS
-- =============================================


-- Aluno 1: Aline Sonagere Neves
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-02-09'::date, '2026-02-13'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-07-27'::date, '2026-07-31'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-08-10'::date, '2026-08-14'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';

-- Aluno 2: Andreza Vieira Ramos

-- Aluno 3: Anna Luisa Lima Caricati
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-02-09'::date, '2026-02-13'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';

-- Aluno 4: Arthur Gonçalez Sasaki
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-01-12'::date, '2026-01-16'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-07-27'::date, '2026-07-31'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-08-10'::date, '2026-08-14'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';

-- Aluno 5: Ayrton Ono Sakamoto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'P', 'P', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Eumildo', 'Eumildo', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-07-27'::date, '2026-07-31'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-08-10'::date, '2026-08-14'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';

-- Aluno 6: Bárbara Julia Tricarico Petrucci
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-01-12'::date, '2026-01-16'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';

-- Aluno 7: Beatriz Lopes Montozo
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'F É', 'F É', '2026-12-29'::date, '2026-01-04'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-01-26'::date, '2026-01-30'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-07-13'::date, '2026-07-17'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';

-- Aluno 8: Breno Borges Godoy
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'É R', 'É R', '2026-06-29'::date, '2026-07-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-07-13'::date, '2026-07-17'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-07-27'::date, '2026-07-31'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS CIDADE JARDIM', 'Saúde Coletiva - UBS CIDADE JARDIM', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS SCHMIDTT', 'Saúde Coletiva - UBS SCHMIDTT', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';

-- Aluno 9: Bruno Zaccari Bertolini
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-01-26'::date, '2026-01-30'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I N T', 'I N T', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-04-27'::date, '2026-05-01'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';

-- Aluno 10: Carlos Eduardo Sathler Gomes Feitosa
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-07-13'::date, '2026-07-17'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';

-- Aluno 11: Carlos Ryuichi Yamamoto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-03-23'::date, '2026-03-27'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E', 'E', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I A', 'I A', '2026-06-29'::date, '2026-07-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-09-07'::date, '2026-09-11'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-09-21'::date, '2026-09-25'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';

-- Aluno 12: Caroline Gomes de Oliveira
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'A S', 'A S', '2026-12-29'::date, '2026-01-04'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-03-23'::date, '2026-03-27'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'R M', 'R M', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-04-13'::date, '2026-04-17'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';

-- Aluno 13: Conceição Pinheiro de Souza
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';

-- Aluno 14: Daniel Delmondes Ramos
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-02-23'::date, '2026-02-27'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E', 'E', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-09-07'::date, '2026-09-11'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-09-21'::date, '2026-09-25'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';

-- Aluno 15: Enzo Augusto Botero
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-02-23'::date, '2026-02-27'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'D', 'D', '2026-03-30'::date, '2026-04-03'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-05-25'::date, '2026-05-29'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-09-07'::date, '2026-09-11'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-09-14'::date, '2026-09-18'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-09-21'::date, '2026-09-25'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';

-- Aluno 16: Felipe Costa Trida Sene
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-08-24'::date, '2026-08-28'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-09-28'::date, '2026-10-02'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-10-12'::date, '2026-10-16'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-10-26'::date, '2026-10-30'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-11-09'::date, '2026-11-13'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-11-23'::date, '2026-11-27'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-12-07'::date, '2026-12-11'::date, 4, 'PED E GO' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';

-- Aluno 17: Felipe de Oliveira Belo
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-01-05'::date, '2026-01-09'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-01-19'::date, '2026-01-23'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-02-02'::date, '2026-02-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-02-16'::date, '2026-02-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-03-09'::date, '2026-03-13'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-03-16'::date, '2026-03-20'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-04-06'::date, '2026-04-10'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-04-20'::date, '2026-04-24'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-05-18'::date, '2026-05-22'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-07-20'::date, '2026-07-24'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-08-24'::date, '2026-08-28'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-09-07'::date, '2026-09-11'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';

-- Aluno 18: Fernanda de Jesus Paixão Morgado

-- Aluno 19: Fernanda Follis Tasso
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-03-02'::date, '2026-03-06'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-03-09'::date, '2026-03-13'::date, 1, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-05-04'::date, '2026-05-08'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-05-11'::date, '2026-05-15'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-06-01'::date, '2026-06-05'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-06-08'::date, '2026-06-12'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-06-15'::date, '2026-06-19'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-06-22'::date, '2026-06-26'::date, 2, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-07-06'::date, '2026-07-10'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-08-03'::date, '2026-08-07'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-08-17'::date, '2026-08-21'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-08-24'::date, '2026-08-28'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-08-31'::date, '2026-09-04'::date, 3, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';

-- Aluno 20: Gabriel Alleoni Moreira
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-05-11'::date, '2026-05-15'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';

-- Aluno 21: Gabriel Andrade Vaz de Lima

-- Aluno 22: Gabriel Cardozo de Mattos
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-05-11'::date, '2026-05-15'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';

-- Aluno 23: Gabriel de Oliveira Pinto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'P', 'P', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-04-13'::date, '2026-04-17'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';

-- Aluno 24: Gabriel Goldner Campos
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Eumildo', 'Eumildo', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';

-- Aluno 25: Gabriel Lourenço Rodrigues Lopes de Carvalho
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-04-13'::date, '2026-04-17'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';

-- Aluno 26: Gabriel Ribeiro Ramos
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'F É R', 'F É R', '2026-12-29'::date, '2026-01-04'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-04-27'::date, '2026-05-01'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';

-- Aluno 27: Gabriela Marcia Marques

-- Aluno 28: Giovana Chagas Irineu
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I N', 'I N', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-04-27'::date, '2026-05-01'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'É R', 'É R', '2026-06-29'::date, '2026-07-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-07-27'::date, '2026-07-31'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';

-- Aluno 29: Giovanna Custodio Hengler

-- Aluno 30: Giulia Mulero Citro
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I A S', 'I A S', '2026-12-29'::date, '2026-01-04'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'T', 'T', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-06-22'::date, '2026-06-26'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';

-- Aluno 31: Giuseppe Ribeiro Ayello
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E R', 'E R', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-06-22'::date, '2026-06-26'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'A S', 'A S', '2026-06-29'::date, '2026-07-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-07-13'::date, '2026-07-17'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';

-- Aluno 32: Guilherme Silva Bruno Barbosa

-- Aluno 33: Gustavo Feletti Rocha
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'M', 'M', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-05-25'::date, '2026-05-29'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';

-- Aluno 34: Henrique Otávio Melo de Assis
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E D', 'E D', '2026-03-30'::date, '2026-04-03'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-05-25'::date, '2026-05-29'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-08-24'::date, '2026-08-28'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';

-- Aluno 35: Henrique Yuzo Nakamune Uezu

-- Aluno 36: Ingrid Louise Alves da Silva
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-01-05'::date, '2026-01-09'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-01-19'::date, '2026-01-23'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-02-02'::date, '2026-02-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-02-16'::date, '2026-02-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-03-02'::date, '2026-03-06'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-03-16'::date, '2026-03-20'::date, 1, 'PED E GO' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-04-06'::date, '2026-04-10'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-04-20'::date, '2026-04-24'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-05-04'::date, '2026-05-08'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-05-18'::date, '2026-05-22'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-06-08'::date, '2026-06-12'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-06-15'::date, '2026-06-19'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-07-06'::date, '2026-07-10'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-07-20'::date, '2026-07-24'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-08-17'::date, '2026-08-21'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';


-- Aluno 37: Isabella Cardoso Almeida

-- Aluno 38: Isabella Carolina Santos Silveira
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-06-01'::date, '2026-06-05'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-06-08'::date, '2026-06-12'::date, 2, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-08-03'::date, '2026-08-07'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-08-10'::date, '2026-08-14'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-08-31'::date, '2026-09-04'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-09-07'::date, '2026-09-11'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-09-14'::date, '2026-09-18'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-09-21'::date, '2026-09-25'::date, 3, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';


-- Aluno 39: Isadora Carvalho Silvestre de Moraes
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-01-26'::date, '2026-01-30'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-02-09'::date, '2026-02-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-08-10'::date, '2026-08-14'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';

-- Aluno 40: João Victor Azevedo Zanatta

-- Aluno 41: Juan Silva Locks Camargo
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-08-10'::date, '2026-08-14'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';

-- Aluno 42: Julia de Aguiar Freitas
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-01-26'::date, '2026-01-30'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-02-09'::date, '2026-02-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'P R', 'P R', '2026-03-30'::date, '2026-04-03'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-07-13'::date, '2026-07-17'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';

-- Aluno 43: Júlia Palaro Biasotti
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-01-26'::date, '2026-01-30'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-02-09'::date, '2026-02-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';

-- Aluno 44: Júlia Sinhorini de Lima
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-07-13'::date, '2026-07-17'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';

-- Aluno 45: Laura Cecilia Fernandes Silva
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-01-12'::date, '2026-01-16'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'É I N', 'É I N', '2026-03-30'::date, '2026-04-03'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'F É', 'F É', '2026-06-29'::date, '2026-07-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-07-27'::date, '2026-07-31'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';

-- Aluno 46: Leandro Kiyoshi Ynada
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-01-12'::date, '2026-01-16'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-01-26'::date, '2026-01-30'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS CIDADE JARDIM', 'Saúde Coletiva - UBS CIDADE JARDIM', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS SCHMIDTT', 'Saúde Coletiva - UBS SCHMIDTT', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';

-- Aluno 47: Leonardo Fornazari Estabile
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-07-27'::date, '2026-07-31'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-10-19'::date, '2026-10-23'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';

-- Aluno 48: Letícia Aguirre Mantoani
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-01-12'::date, '2026-01-16'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';

-- Aluno 49: Letícia Segura Graciani
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I A', 'I A', '2026-12-29'::date, '2026-01-04'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-03-09'::date, '2026-03-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-03-23'::date, '2026-03-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'T E R', 'T E R', '2026-03-30'::date, '2026-04-03'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-09-21'::date, '2026-09-25'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';

-- Aluno 50: Lucas Zaidel Netto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'A S', 'A S', '2026-06-29'::date, '2026-07-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-09-21'::date, '2026-09-25'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-10-05'::date, '2026-10-09'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';

-- Aluno 51: Lucca Oliveira Sanches
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';

-- Aluno 52: Marcos Antonio Dias Vilela
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-03-09'::date, '2026-03-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-03-23'::date, '2026-03-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'M E D', 'M E D', '2026-03-30'::date, '2026-04-03'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-08-24'::date, '2026-08-28'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';

-- Aluno 53: Mariana Lyra Arré
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-03-09'::date, '2026-03-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-03-16'::date, '2026-03-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-03-23'::date, '2026-03-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-08-24'::date, '2026-08-28'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-11-16'::date, '2026-11-20'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';

-- Aluno 54: Mariana Mendes Justiça
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-02-23'::date, '2026-02-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';

-- Aluno 55: Matheus Da Silveira Galvão
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-01-19'::date, '2026-01-23'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-02-23'::date, '2026-02-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-03-09'::date, '2026-03-13'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-04-06'::date, '2026-04-10'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-04-20'::date, '2026-04-24'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-05-04'::date, '2026-05-08'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-05-18'::date, '2026-05-22'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-06-01'::date, '2026-06-05'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-06-15'::date, '2026-06-19'::date, 2, 'PED E GO' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-07-06'::date, '2026-07-10'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-07-20'::date, '2026-07-24'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-08-03'::date, '2026-08-07'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-08-17'::date, '2026-08-21'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-09-07'::date, '2026-09-11'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-09-14'::date, '2026-09-18'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-09-28'::date, '2026-10-02'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-10-12'::date, '2026-10-16'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-11-09'::date, '2026-11-13'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';

-- Aluno 56: Matheus Nassar Lecce

-- Aluno 57: Matheus Simioni
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-01-05'::date, '2026-01-09'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-02-02'::date, '2026-02-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-02-16'::date, '2026-02-20'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-02-23'::date, '2026-02-27'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-03-02'::date, '2026-03-06'::date, 1, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-08-31'::date, '2026-09-04'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-09-07'::date, '2026-09-11'::date, 3, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-10-26'::date, '2026-10-30'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-11-02'::date, '2026-11-06'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-11-23'::date, '2026-11-27'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-11-30'::date, '2026-12-04'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-12-07'::date, '2026-12-11'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-12-14'::date, '2026-12-18'::date, 4, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';

-- Aluno 58: Maurício Samorano Silva
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-04-27'::date, '2026-05-01'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-05-11'::date, '2026-05-15'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-11-02'::date, '2026-11-06'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';

-- Aluno 59: Patrick Oliveira Lemes

-- Aluno 60: Pedro Arthur Deângeli Pivirotto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-04-27'::date, '2026-05-01'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-05-11'::date, '2026-05-15'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-11-02'::date, '2026-11-06'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';

-- Aluno 61: Pedro Cezar Guedes
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-10-05'::date, '2026-10-09'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';

-- Aluno 62: Rafael Santos Restivo
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Eumildo', 'Eumildo', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'P', 'P', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-04-27'::date, '2026-05-01'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-05-11'::date, '2026-05-15'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';

-- Aluno 63: Raquel Hernandez Bertine
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-04-13'::date, '2026-04-17'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-10-05'::date, '2026-10-09'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';

-- Aluno 64: Rebeca Dall´ Aqua de Godoy
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'F É', 'F É', '2026-12-29'::date, '2026-01-04'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'F É R I', 'F É R I', '2026-06-29'::date, '2026-07-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-10-19'::date, '2026-10-23'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';

-- Aluno 65: Rodrigo Shibaki
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'I N', 'I N', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-04-13'::date, '2026-04-17'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-04-27'::date, '2026-05-01'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS CIDADE JARDIM', 'Saúde Coletiva - UBS CIDADE JARDIM', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS SCHMIDTT', 'Saúde Coletiva - UBS SCHMIDTT', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';

-- Aluno 66: Sam William Rodrigues Martins
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'R I', 'R I', '2026-12-29'::date, '2026-01-04'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-01-26'::date, '2026-01-30'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-10-19'::date, '2026-10-23'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';

-- Aluno 67: Sarah Ganga Frizzas Borsari
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'T', 'T', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-04-13'::date, '2026-04-17'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';

-- Aluno 68: Tarsis de Oliveira Pissolato
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO', 'ONCO', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E R', 'E R', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-06-08'::date, '2026-06-12'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-06-22'::date, '2026-06-26'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'A S', 'A S', '2026-06-29'::date, '2026-07-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-12-14'::date, '2026-12-18'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';

-- Aluno 69: Thaylon de Abreu Damacena
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'A S', 'A S', '2026-12-29'::date, '2026-01-04'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-01-12'::date, '2026-01-16'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-12-14'::date, '2026-12-18'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';

-- Aluno 70: Victor Augusto Belani Fernandes
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'M', 'M', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-06-08'::date, '2026-06-12'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-06-22'::date, '2026-06-26'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';

-- Aluno 71: Víctor Joaquim de Amaral e Gouveia
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'E', 'E', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-11-16'::date, '2026-11-20'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';

-- Aluno 72: Victório Marangon Neto
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-02-23'::date, '2026-02-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'D', 'D', '2026-03-30'::date, '2026-04-03'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-06-08'::date, '2026-06-12'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-06-15'::date, '2026-06-19'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-06-22'::date, '2026-06-26'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-11-16'::date, '2026-11-20'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';

-- Aluno 73: Vitor de Oliveira Rossi
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-05-25'::date, '2026-05-29'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';

-- Aluno 74: Vitória Ferreira de Oliveira
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'HOSPITAL MUNICIPAL', 'HOSPITAL MUNICIPAL', '2026-01-05'::date, '2026-01-09'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro Cirurgia', 'Gastro Cirurgia', '2026-01-19'::date, '2026-01-23'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Coloprocto', 'Coloprocto', '2026-02-16'::date, '2026-02-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UPA TANGARÁ / SAMU', 'UPA TANGARÁ / SAMU', '2026-04-20'::date, '2026-04-24'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Saúde Coletiva - UBS', 'Saúde Coletiva - UBS', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-05-25'::date, '2026-05-29'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'DIP', 'DIP', '2026-06-08'::date, '2026-06-12'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Aloj. Conjunto', 'Aloj. Conjunto', '2026-07-06'::date, '2026-07-10'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Amb. Ped.', 'Amb. Ped.', '2026-07-20'::date, '2026-07-24'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Enf. Ped. Ensino', 'Enf. Ped. Ensino', '2026-08-03'::date, '2026-08-07'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. IV', 'Unid. IV', '2026-08-17'::date, '2026-08-21'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Centro Obstétrico', 'Centro Obstétrico', '2026-08-31'::date, '2026-09-04'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Unid. I', 'Unid. I', '2026-09-14'::date, '2026-09-18'::date, 3, 'PED E GO' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Nefro', 'Nefro', '2026-09-28'::date, '2026-10-02'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'UBS Vila Toninho', 'UBS Vila Toninho', '2026-10-12'::date, '2026-10-16'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Gastro', 'Gastro', '2026-10-26'::date, '2026-10-30'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Pneumo', 'Pneumo', '2026-11-09'::date, '2026-11-13'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-11-30'::date, '2026-12-04'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Reumato', 'Reumato', '2026-12-07'::date, '2026-12-11'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';

-- Aluno 75: Vivian Joice Pinto Silva

-- Aluno 76: William de Freitas Barros
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Dib', 'ONCO Dib', '2026-02-02'::date, '2026-02-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'ONCO Eumildo', 'ONCO Eumildo', '2026-02-09'::date, '2026-02-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Ortopedia', 'Ortopedia', '2026-03-02'::date, '2026-03-06'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Otorrino', 'Otorrino', '2026-03-09'::date, '2026-03-13'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Torácica', 'Torácica', '2026-03-16'::date, '2026-03-20'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Fígado', 'Fígado', '2026-03-23'::date, '2026-03-27'::date, 1, 'CIRURGIA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIDADE JARDIM', 'CIDADE JARDIM', '2026-04-06'::date, '2026-04-10'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'SCHMIDTT', 'SCHMIDTT', '2026-05-04'::date, '2026-05-08'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Anestesio', 'Anestesio', '2026-05-18'::date, '2026-05-22'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'CIP', 'CIP', '2026-05-25'::date, '2026-05-29'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Vascular', 'Vascular', '2026-06-01'::date, '2026-06-05'::date, 2, 'ESPECIALIDADES' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Hemato', 'Hemato', '2026-11-23'::date, '2026-11-27'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) SELECT id, 'Uro', 'Uro', '2026-11-30'::date, '2026-12-04'::date, 4, 'CLÍNICA' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';

-- =============================================
-- PARTE 4: INSERIR PLANTÕES
-- =============================================


-- Aluno 1: Aline Sonagere Neves
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-30'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-04'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 1 AND serie = '5';

-- Aluno 2: Andreza Vieira Ramos
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 2 AND serie = '5';

-- Aluno 3: Anna Luisa Lima Caricati
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 3 AND serie = '5';

-- Aluno 4: Arthur Gonçalez Sasaki
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 4 AND serie = '5';

-- Aluno 5: Ayrton Ono Sakamoto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 5 AND serie = '5';

-- Aluno 6: Bárbara Julia Tricarico Petrucci
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 6 AND serie = '5';

-- Aluno 7: Beatriz Lopes Montozo
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 7 AND serie = '5';

-- Aluno 8: Breno Borges Godoy
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-23'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 8 AND serie = '5';

-- Aluno 9: Bruno Zaccari Bertolini
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 9 AND serie = '5';

-- Aluno 10: Carlos Eduardo S. G. Feitosa
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-13'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 10 AND serie = '5';

-- Aluno 11: Carlos Ryuichi Yamamoto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-28'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-26'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 11 AND serie = '5';

-- Aluno 12: Caroline Gomes de Oliveira
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 12 AND serie = '5';

-- Aluno 13: Conceição Pinheiro de Souza
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 13 AND serie = '5';

-- Aluno 14: Daniel Delmondes Ramos
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-20'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 14 AND serie = '5';

-- Aluno 15: Enzo Augusto Botero
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 15 AND serie = '5';

-- Aluno 16: Felipe Costa Trida Sene
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-06'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 16 AND serie = '5';

-- Aluno 17: Felipe de Oliveira Belo
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-12'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 17 AND serie = '5';

-- Aluno 18: Fernanda de Jesus Paixão Morgado
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 18 AND serie = '5';

-- Aluno 19: Fernanda Follis Tasso
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-01-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-02-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-03-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-04-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-09'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-05-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-06-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 19 AND serie = '5';

-- Aluno 20: Gabriel Alleoni Moreira
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-12'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 20 AND serie = '5';

-- Aluno 21: Gabriel Andrade Vaz de Lima
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 21 AND serie = '5';

-- Aluno 22: Gabriel Cardozo de Mattos
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-13'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 22 AND serie = '5';

-- Aluno 23: Gabriel de Oliveira Pinto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-23'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 23 AND serie = '5';

-- Aluno 24: Gabriel Goldner Campos
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-30'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 24 AND serie = '5';

-- Aluno 25: Gabriel Lourenço R. L. de Carvalho
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-28'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 25 AND serie = '5';

-- Aluno 26: Gabriel Ribeiro Ramos
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 26 AND serie = '5';

-- Aluno 27: Gabriela Marcia Marques
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-09'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-20'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 27 AND serie = '5';

-- Aluno 28: Giovana Chagas Irineu
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 28 AND serie = '5';

-- Aluno 29: Giovanna Custodio Hengler
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-01-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-03-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-04'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 29 AND serie = '5';

-- Aluno 30: Giulia Mulero Citro
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 30 AND serie = '5';

-- Aluno 31: Giuseppe Ribeiro Ayello
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-06'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 31 AND serie = '5';

-- Aluno 32: Guilherme Silva Bruno Barbosa
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 32 AND serie = '5';

-- Aluno 33: Gustavo Feletti Rocha
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-28'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-26'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 33 AND serie = '5';

-- Aluno 34: Henrique Otávio Melo de Assis
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 34 AND serie = '5';

-- Aluno 35: Henrique Yuzo Nakamune Uezu
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 35 AND serie = '5';

-- Aluno 36: Ingrid Louise Alves da Silva
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 36 AND serie = '5';

-- Aluno 37: Isabella Cardoso Almeida
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 37 AND serie = '5';

-- Aluno 38: Isabella Carolina Santos Silveira
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-01-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-02-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-02-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-03-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-04-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-05-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Clínica', '2026-06-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 38 AND serie = '5';

-- Aluno 39: Isadora Carvalho S. de Moraes
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-06'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 39 AND serie = '5';

-- Aluno 40: João Victor Azevedo Zanatta
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 40 AND serie = '5';

-- Aluno 41: Juan Silva Locks Camargo
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 41 AND serie = '5';

-- Aluno 42: Julia de Aguiar Freitas
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-12'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-30'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 42 AND serie = '5';

-- Aluno 43: Júlia Palaro Biasotti
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-09'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-13'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 43 AND serie = '5';

-- Aluno 44: Júlia Sinhorini de Lima
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-26'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 44 AND serie = '5';

-- Aluno 45: Laura Cecilia Fernandes Silva
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 45 AND serie = '5';

-- Aluno 46: Leandro Kiyoshi Ynada
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-20'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 46 AND serie = '5';

-- Aluno 47: Leonardo Fornazari Estabile
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 47 AND serie = '5';

-- Aluno 48: Letícia Aguirre Mantoani
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-04-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-23'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-04'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-06-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 48 AND serie = '5';

-- Aluno 49: Letícia Segura Graciani
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-12'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-06'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 49 AND serie = '5';

-- Aluno 50: Lucas Zaidel Netto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 50 AND serie = '5';

-- Aluno 51: Lucca Oliveira Sanches
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-20'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 51 AND serie = '5';

-- Aluno 52: Marcos Antonio Dias Vilela
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-30'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 52 AND serie = '5';

-- Aluno 53: Mariana Lyra Arré
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-09'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 53 AND serie = '5';

-- Aluno 54: Mariana Mendes Justiça
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-26'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-23'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 54 AND serie = '5';

-- Aluno 55: Matheus Da Silveira Galvão
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 55 AND serie = '5';

-- Aluno 56: Matheus Nassar Lecce
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-04'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 56 AND serie = '5';

-- Aluno 57: Matheus Simioni
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-01-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-02-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-03-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-04-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'EMEPED', '2026-05-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-05-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-13'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'Emergência C.O.', '2026-06-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 57 AND serie = '5';

-- Aluno 58: Maurício Samorano Silva
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 58 AND serie = '5';

-- Aluno 59: Patrick Oliveira Lemes
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-11'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 59 AND serie = '5';

-- Aluno 60: Pedro Arthur Deângeli Pivirotto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 60 AND serie = '5';

-- Aluno 61: Pedro Cezar Guedes
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 61 AND serie = '5';

-- Aluno 62: Rafael Santos Restivo
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-31'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 62 AND serie = '5';

-- Aluno 63: Raquel Hernandez Bertine
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-10'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-30'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 63 AND serie = '5';

-- Aluno 64: Rebeca Dall´ Aqua de Godoy
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-16'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-03'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 64 AND serie = '5';

-- Aluno 65: Rodrigo Shibaki
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-18'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 65 AND serie = '5';

-- Aluno 66: Sam William Rodrigues Martins
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-31'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-13'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 66 AND serie = '5';

-- Aluno 67: Sarah Ganga Frizzas Borsari
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-15'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 67 AND serie = '5';

-- Aluno 68: Tarsis de Oliveira Pissolato
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-28'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 68 AND serie = '5';

-- Aluno 69: Thaylon de Abreu Damacena
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-24'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 69 AND serie = '5';

-- Aluno 70: Victor Augusto Belani Fernandes
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-15'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-27'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 70 AND serie = '5';

-- Aluno 71: Víctor Joaquim de A. e Gouveia
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-14'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-22'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-02'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-23'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 71 AND serie = '5';

-- Aluno 72: Victório Marangon Neto
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-29'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-07'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-07'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-09'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 72 AND serie = '5';

-- Aluno 73: Vitor de Oliveira Rossi
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-05'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-01'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-10'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-16'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-21'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 73 AND serie = '5';

-- Aluno 74: Vitória Ferreira de Oliveira
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-17'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-22'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-08'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-19'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-06'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-01'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-26'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 74 AND serie = '5';

-- Aluno 75: Vivian Joice Pinto Silva
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-11'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-28'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-02'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-20'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-14'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-25'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 75 AND serie = '5';

-- Aluno 76: William de Freitas Barros
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-01-25'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-04'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-02-24'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-03'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-08'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'PA Cirurgia', '2026-03-19'::date, 'Diurno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-04-17'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-05-21'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-12'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';
INSERT INTO plantoes (usuario_id, tipo, data, turno) SELECT id, 'UPA', '2026-06-18'::date, 'Noturno' FROM usuarios WHERE numero_chamada = 76 AND serie = '5';

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