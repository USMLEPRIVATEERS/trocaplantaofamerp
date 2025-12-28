-- =============================================
-- IMPORTAÇÃO DOS ALUNOS DA 5ª SÉRIE - 2026
-- =============================================
-- Este script importa todos os 76 alunos da 5ª série
-- com seus estágios e plantões
-- Os alunos farão login pela primeira vez e definirão suas senhas
-- =============================================

-- Desabilitar triggers temporariamente para performance
SET session_replication_role = 'replica';

-- Inserir todos os alunos da 5ª série
-- primeiro_acesso = true significa que precisarão definir senha no primeiro login
INSERT INTO usuarios (numero_chamada, serie, primeiro_acesso) VALUES
(1, '5', true),  -- Aline Sonagere Neves
(2, '5', true),  -- Andreza Vieira Ramos
(3, '5', true),  -- Anna Luisa Lima Caricati
(4, '5', true),  -- Arthur Gonçalez Sasaki
(5, '5', true),  -- Ayrton Ono Sakamoto
(6, '5', true),  -- Bárbara Julia Tricarico Petrucci
(7, '5', true),  -- Beatriz Lopes Montozo
(8, '5', true),  -- Breno Borges Godoy
(9, '5', true),  -- Bruno Zaccari Bertolini
(10, '5', true), -- Carlos Eduardo S. G. Feitosa
(11, '5', true), -- Carlos Ryuichi Yamamoto
(12, '5', true), -- Caroline Gomes de Oliveira
(13, '5', true), -- Conceição Pinheiro de Souza
(14, '5', true), -- Daniel Delmondes Ramos
(15, '5', true), -- Enzo Augusto Botero
(16, '5', true), -- Felipe Costa Trida Sene
(17, '5', true), -- Felipe de Oliveira Belo
(18, '5', true), -- Fernanda de Jesus Paixão Morgado
(19, '5', true), -- Fernanda Follis Tasso
(20, '5', true), -- Gabriel Alleoni Moreira
(21, '5', true), -- Gabriel Andrade Vaz de Lima
(22, '5', true), -- Gabriel Cardozo de Mattos
(23, '5', true), -- Gabriel de Oliveira Pinto
(24, '5', true), -- Gabriel Goldner Campos
(25, '5', true), -- Gabriel Lourenço R. L. de Carvalho
(26, '5', true), -- Gabriel Ribeiro Ramos
(27, '5', true), -- Gabriela Marcia Marques
(28, '5', true), -- Giovana Chagas Irineu
(29, '5', true), -- Giovanna Custodio Hengler
(30, '5', true), -- Giulia Mulero Citro
(31, '5', true), -- Giuseppe Ribeiro Ayello
(32, '5', true), -- Guilherme Silva Bruno Barbosa
(33, '5', true), -- Gustavo Feletti Rocha
(34, '5', true), -- Henrique Otávio Melo de Assis
(35, '5', true), -- Henrique Yuzo Nakamune Uezu
(36, '5', true), -- Ingrid Louise Alves da Silva
(37, '5', true), -- Isabella Cardoso Almeida
(38, '5', true), -- Isabella Carolina Santos Silveira
(39, '5', true), -- Isadora Carvalho S. de Moraes
(40, '5', true), -- João Victor Azevedo Zanatta
(41, '5', true), -- Juan Silva Locks Camargo
(42, '5', true), -- Julia de Aguiar Freitas
(43, '5', true), -- Júlia Palaro Biasotti
(44, '5', true), -- Júlia Sinhorini de Lima
(45, '5', true), -- Laura Cecilia Fernandes Silva
(46, '5', true), -- Leandro Kiyoshi Ynada
(47, '5', true), -- Leonardo Fornazari Estabile
(48, '5', true), -- Letícia Aguirre Mantoani
(49, '5', true), -- Letícia Segura Graciani
(50, '5', true), -- Lucas Zaidel Netto
(51, '5', true), -- Lucca Oliveira Sanches
(52, '5', true), -- Marcos Antonio Dias Vilela
(53, '5', true), -- Mariana Lyra Arré
(54, '5', true), -- Mariana Mendes Justiça
(55, '5', true), -- Matheus Da Silveira Galvão
(56, '5', true), -- Matheus Nassar Lecce
(57, '5', true), -- Matheus Simioni
(58, '5', true), -- Maurício Samorano Silva
(59, '5', true), -- Patrick Oliveira Lemes
(60, '5', true), -- Pedro Arthur Deângeli Pivirotto
(61, '5', true), -- Pedro Cezar Guedes
(62, '5', true), -- Rafael Santos Restivo
(63, '5', true), -- Raquel Hernandez Bertine
(64, '5', true), -- Rebeca Dall´ Aqua de Godoy
(65, '5', true), -- Rodrigo Shibaki
(66, '5', true), -- Sam William Rodrigues Martins
(67, '5', true), -- Sarah Ganga Frizzas Borsari
(68, '5', true), -- Tarsis de Oliveira Pissolato
(69, '5', true), -- Thaylon de Abreu Damacena
(70, '5', true), -- Victor Augusto Belani Fernandes
(71, '5', true), -- Víctor Joaquim de A. e Gouveia
(72, '5', true), -- Victório Marangon Neto
(73, '5', true), -- Vitor de Oliveira Rossi
(74, '5', true), -- Vitória Ferreira de Oliveira
(75, '5', true), -- Vivian Joice Pinto Silva
(76, '5', true); -- William de Freitas Barros

-- Atualizar nomes dos alunos
UPDATE usuarios SET nome = 'Aline Sonagere Neves' WHERE numero_chamada = 1 AND serie = '5';
UPDATE usuarios SET nome = 'Andreza Vieira Ramos' WHERE numero_chamada = 2 AND serie = '5';
UPDATE usuarios SET nome = 'Anna Luisa Lima Caricati' WHERE numero_chamada = 3 AND serie = '5';
UPDATE usuarios SET nome = 'Arthur Gonçalez Sasaki' WHERE numero_chamada = 4 AND serie = '5';
UPDATE usuarios SET nome = 'Ayrton Ono Sakamoto' WHERE numero_chamada = 5 AND serie = '5';
UPDATE usuarios SET nome = 'Bárbara Julia Tricarico Petrucci' WHERE numero_chamada = 6 AND serie = '5';
UPDATE usuarios SET nome = 'Beatriz Lopes Montozo' WHERE numero_chamada = 7 AND serie = '5';
UPDATE usuarios SET nome = 'Breno Borges Godoy' WHERE numero_chamada = 8 AND serie = '5';
UPDATE usuarios SET nome = 'Bruno Zaccari Bertolini' WHERE numero_chamada = 9 AND serie = '5';
UPDATE usuarios SET nome = 'Carlos Eduardo S. G. Feitosa' WHERE numero_chamada = 10 AND serie = '5';
UPDATE usuarios SET nome = 'Carlos Ryuichi Yamamoto' WHERE numero_chamada = 11 AND serie = '5';
UPDATE usuarios SET nome = 'Caroline Gomes de Oliveira' WHERE numero_chamada = 12 AND serie = '5';
UPDATE usuarios SET nome = 'Conceição Pinheiro de Souza' WHERE numero_chamada = 13 AND serie = '5';
UPDATE usuarios SET nome = 'Daniel Delmondes Ramos' WHERE numero_chamada = 14 AND serie = '5';
UPDATE usuarios SET nome = 'Enzo Augusto Botero' WHERE numero_chamada = 15 AND serie = '5';
UPDATE usuarios SET nome = 'Felipe Costa Trida Sene' WHERE numero_chamada = 16 AND serie = '5';
UPDATE usuarios SET nome = 'Felipe de Oliveira Belo' WHERE numero_chamada = 17 AND serie = '5';
UPDATE usuarios SET nome = 'Fernanda de Jesus Paixão Morgado' WHERE numero_chamada = 18 AND serie = '5';
UPDATE usuarios SET nome = 'Fernanda Follis Tasso' WHERE numero_chamada = 19 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Alleoni Moreira' WHERE numero_chamada = 20 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Andrade Vaz de Lima' WHERE numero_chamada = 21 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Cardozo de Mattos' WHERE numero_chamada = 22 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel de Oliveira Pinto' WHERE numero_chamada = 23 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Goldner Campos' WHERE numero_chamada = 24 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Lourenço R. L. de Carvalho' WHERE numero_chamada = 25 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriel Ribeiro Ramos' WHERE numero_chamada = 26 AND serie = '5';
UPDATE usuarios SET nome = 'Gabriela Marcia Marques' WHERE numero_chamada = 27 AND serie = '5';
UPDATE usuarios SET nome = 'Giovana Chagas Irineu' WHERE numero_chamada = 28 AND serie = '5';
UPDATE usuarios SET nome = 'Giovanna Custodio Hengler' WHERE numero_chamada = 29 AND serie = '5';
UPDATE usuarios SET nome = 'Giulia Mulero Citro' WHERE numero_chamada = 30 AND serie = '5';
UPDATE usuarios SET nome = 'Giuseppe Ribeiro Ayello' WHERE numero_chamada = 31 AND serie = '5';
UPDATE usuarios SET nome = 'Guilherme Silva Bruno Barbosa' WHERE numero_chamada = 32 AND serie = '5';
UPDATE usuarios SET nome = 'Gustavo Feletti Rocha' WHERE numero_chamada = 33 AND serie = '5';
UPDATE usuarios SET nome = 'Henrique Otávio Melo de Assis' WHERE numero_chamada = 34 AND serie = '5';
UPDATE usuarios SET nome = 'Henrique Yuzo Nakamune Uezu' WHERE numero_chamada = 35 AND serie = '5';
UPDATE usuarios SET nome = 'Ingrid Louise Alves da Silva' WHERE numero_chamada = 36 AND serie = '5';
UPDATE usuarios SET nome = 'Isabella Cardoso Almeida' WHERE numero_chamada = 37 AND serie = '5';
UPDATE usuarios SET nome = 'Isabella Carolina Santos Silveira' WHERE numero_chamada = 38 AND serie = '5';
UPDATE usuarios SET nome = 'Isadora Carvalho S. de Moraes' WHERE numero_chamada = 39 AND serie = '5';
UPDATE usuarios SET nome = 'João Victor Azevedo Zanatta' WHERE numero_chamada = 40 AND serie = '5';
UPDATE usuarios SET nome = 'Juan Silva Locks Camargo' WHERE numero_chamada = 41 AND serie = '5';
UPDATE usuarios SET nome = 'Julia de Aguiar Freitas' WHERE numero_chamada = 42 AND serie = '5';
UPDATE usuarios SET nome = 'Júlia Palaro Biasotti' WHERE numero_chamada = 43 AND serie = '5';
UPDATE usuarios SET nome = 'Júlia Sinhorini de Lima' WHERE numero_chamada = 44 AND serie = '5';
UPDATE usuarios SET nome = 'Laura Cecilia Fernandes Silva' WHERE numero_chamada = 45 AND serie = '5';
UPDATE usuarios SET nome = 'Leandro Kiyoshi Ynada' WHERE numero_chamada = 46 AND serie = '5';
UPDATE usuarios SET nome = 'Leonardo Fornazari Estabile' WHERE numero_chamada = 47 AND serie = '5';
UPDATE usuarios SET nome = 'Letícia Aguirre Mantoani' WHERE numero_chamada = 48 AND serie = '5';
UPDATE usuarios SET nome = 'Letícia Segura Graciani' WHERE numero_chamada = 49 AND serie = '5';
UPDATE usuarios SET nome = 'Lucas Zaidel Netto' WHERE numero_chamada = 50 AND serie = '5';
UPDATE usuarios SET nome = 'Lucca Oliveira Sanches' WHERE numero_chamada = 51 AND serie = '5';
UPDATE usuarios SET nome = 'Marcos Antonio Dias Vilela' WHERE numero_chamada = 52 AND serie = '5';
UPDATE usuarios SET nome = 'Mariana Lyra Arré' WHERE numero_chamada = 53 AND serie = '5';
UPDATE usuarios SET nome = 'Mariana Mendes Justiça' WHERE numero_chamada = 54 AND serie = '5';
UPDATE usuarios SET nome = 'Matheus Da Silveira Galvão' WHERE numero_chamada = 55 AND serie = '5';
UPDATE usuarios SET nome = 'Matheus Nassar Lecce' WHERE numero_chamada = 56 AND serie = '5';
UPDATE usuarios SET nome = 'Matheus Simioni' WHERE numero_chamada = 57 AND serie = '5';
UPDATE usuarios SET nome = 'Maurício Samorano Silva' WHERE numero_chamada = 58 AND serie = '5';
UPDATE usuarios SET nome = 'Patrick Oliveira Lemes' WHERE numero_chamada = 59 AND serie = '5';
UPDATE usuarios SET nome = 'Pedro Arthur Deângeli Pivirotto' WHERE numero_chamada = 60 AND serie = '5';
UPDATE usuarios SET nome = 'Pedro Cezar Guedes' WHERE numero_chamada = 61 AND serie = '5';
UPDATE usuarios SET nome = 'Rafael Santos Restivo' WHERE numero_chamada = 62 AND serie = '5';
UPDATE usuarios SET nome = 'Raquel Hernandez Bertine' WHERE numero_chamada = 63 AND serie = '5';
UPDATE usuarios SET nome = 'Rebeca Dall´ Aqua de Godoy' WHERE numero_chamada = 64 AND serie = '5';
UPDATE usuarios SET nome = 'Rodrigo Shibaki' WHERE numero_chamada = 65 AND serie = '5';
UPDATE usuarios SET nome = 'Sam William Rodrigues Martins' WHERE numero_chamada = 66 AND serie = '5';
UPDATE usuarios SET nome = 'Sarah Ganga Frizzas Borsari' WHERE numero_chamada = 67 AND serie = '5';
UPDATE usuarios SET nome = 'Tarsis de Oliveira Pissolato' WHERE numero_chamada = 68 AND serie = '5';
UPDATE usuarios SET nome = 'Thaylon de Abreu Damacena' WHERE numero_chamada = 69 AND serie = '5';
UPDATE usuarios SET nome = 'Victor Augusto Belani Fernandes' WHERE numero_chamada = 70 AND serie = '5';
UPDATE usuarios SET nome = 'Víctor Joaquim de A. e Gouveia' WHERE numero_chamada = 71 AND serie = '5';
UPDATE usuarios SET nome = 'Victório Marangon Neto' WHERE numero_chamada = 72 AND serie = '5';
UPDATE usuarios SET nome = 'Vitor de Oliveira Rossi' WHERE numero_chamada = 73 AND serie = '5';
UPDATE usuarios SET nome = 'Vitória Ferreira de Oliveira' WHERE numero_chamada = 74 AND serie = '5';
UPDATE usuarios SET nome = 'Vivian Joice Pinto Silva' WHERE numero_chamada = 75 AND serie = '5';
UPDATE usuarios SET nome = 'William de Freitas Barros' WHERE numero_chamada = 76 AND serie = '5';

-- Reabilitar triggers
SET session_replication_role = 'origin';

-- Mensagem de sucesso
DO $$
BEGIN
    RAISE NOTICE '✅ Importação concluída com sucesso!';
    RAISE NOTICE '📊 76 alunos da 5ª série foram importados';
    RAISE NOTICE '🔐 Todos os alunos precisarão definir senha no primeiro login';
    RAISE NOTICE '';
    RAISE NOTICE '⚠️ PRÓXIMO PASSO: Cada aluno deve acessar o sistema e:';
    RAISE NOTICE '   1. Fazer login com seu número de chamada e série';
    RAISE NOTICE '   2. Criar uma senha no primeiro acesso';
    RAISE NOTICE '   3. Preencher seus dados pessoais (WhatsApp, PIX)';
    RAISE NOTICE '   4. Adicionar seus estágios e plantões manualmente';
    RAISE NOTICE '';
    RAISE NOTICE '💡 Os dados de estágios e plantões NÃO foram importados automaticamente';
    RAISE NOTICE '   pois cada aluno deve conferir e validar seus próprios dados.';
END $$;
