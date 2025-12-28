#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para processar arquivo de alunos e gerar SQL completo
"""

import re
from datetime import datetime

def parse_date(date_str):
    """Converte data em português para formato SQL (YYYY-MM-DD)"""
    # Remove dia da semana entre parênteses
    date_str = re.sub(r'\s*\([^)]*\)', '', date_str)
    date_str = date_str.strip()

    # Se for intervalo, pegar primeira data
    if ' a ' in date_str:
        date_str = date_str.split(' a ')[0].strip()

    # Adicionar ano se não tiver
    if '2026' not in date_str:
        # Formato: "19/1" -> "19/1/2026"
        parts = date_str.split('/')
        if len(parts) == 2:
            date_str = f"{parts[0]}/{parts[1]}/2026"

    # Converter para formato SQL
    try:
        parts = date_str.split('/')
        if len(parts) == 3:
            day, month, year = parts
            return f"{year}-{month.zfill(2)}-{day.zfill(2)}"
    except:
        pass

    return None

def processar_arquivo(file_path):
    """Processa arquivo TXT e retorna estrutura de dados"""

    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()

    alunos = []
    current_aluno = None
    current_section = None
    current_periodo = None
    current_modulo = None
    current_tipo_plantao = None

    # Flag para pular o índice
    skip_until_detailed_section = True

    lines = content.split('\n')

    for i, line in enumerate(lines):
        line_original = line
        line = line.strip()

        if not line:
            continue

        # Detectar início da seção detalhada (aparece "1. Aline..." PELA SEGUNDA VEZ)
        # Isso acontece depois do índice inicial
        if skip_until_detailed_section:
            # Procurar por um padrão que indica início da seção detalhada
            # Vamos procurar por "ESTGIO" ou "ESTÁGIO" logo após um nome de aluno
            if i > 80 and ('ESTGIO' in line or 'PLANTES' in line):
                skip_until_detailed_section = False
                # Voltar para processar o aluno anterior
                for j in range(i-1, max(0, i-10), -1):
                    prev_line = lines[j].strip()
                    match = re.match(r'^(\d+)\.\s+([A-Z].+)$', prev_line)
                    if match:
                        numero = int(match.group(1))
                        nome = match.group(2).strip()
                        if 1 <= numero <= 76 and any(c.islower() for c in nome):
                            current_aluno = {
                                'numero': numero,
                                'nome': nome,
                                'estagios': [],
                                'plantoes': []
                            }
                            break

        if skip_until_detailed_section:
            continue

        # Detectar novo aluno (formato: "1. Nome Completo")
        match = re.match(r'^(\d+)\.\s+([A-Z].+)$', line)
        if match and 'PERIODO' not in line and 'PERODO' not in line:
            numero = int(match.group(1))
            nome = match.group(2).strip()

            # Validar que é realmente um aluno
            if nome and len(nome) > 5 and any(c.islower() for c in nome):
                # Salvar aluno anterior
                if current_aluno and current_aluno['numero'] <= 76:
                    alunos.append(current_aluno)

                # Criar novo aluno (apenas se for número de 1 a 76)
                if 1 <= numero <= 76:
                    current_aluno = {
                        'numero': numero,
                        'nome': nome,
                        'estagios': [],
                        'plantoes': []
                    }
                    current_section = None
                    current_periodo = None
                    current_modulo = None
                    current_tipo_plantao = None
                continue

        if not current_aluno or current_aluno['numero'] > 76:
            continue

        # Detectar seções (com encoding issues)
        if 'ESTGIO' in line or 'ESTAGIO' in line or 'ESTGIOS' in line:
            current_section = 'estagios'
            current_periodo = None
            current_modulo = None
            continue

        if 'PLANTES' in line or 'PLANTOES' in line or 'PLANTÃO' in line or 'PLANT' in line:
            current_section = 'plantoes'
            current_periodo = None
            current_modulo = None
            current_tipo_plantao = None
            continue

        # Processar estágios
        if current_section == 'estagios':
            # Ignorar "Nenhum estágio registrado"
            if 'Nenhum' in line or 'nenhum' in line:
                continue

            # Detectar período (formato: "1º PERÍODO (05/01-27/03)" ou "1 PERODO")
            if 'PERIODO' in line or 'PERODO' in line or 'PER' in line:
                if re.search(r'\d.*PER', line):  # Tem número antes de PER
                    current_periodo = line
                    continue

            # Detectar módulo (formato: "Módulo CLÍNICA:" ou "Mdulo CLNICA:")
            if ('dulo' in line or 'DULO' in line) and ':' in line:
                match = re.search(r'[Mm][\w]*dulo\s+([^:]+):', line)
                if match:
                    current_modulo = match.group(1).strip()
                    continue

            # Detectar estágio (formato: " 5/1 a 9/1: Reumato")
            # Começa com espaço, tem data "/" e "a" no meio, e tem ":"
            if re.match(r'^\s+\d+/\d+\s+a\s+\d+/\d+:', line):
                match = re.search(r'(\d+/\d+)\s+a\s+(\d+/\d+):\s*(.+)$', line)
                if match and current_modulo:
                    data_inicio_str = match.group(1)
                    data_fim_str = match.group(2)
                    local = match.group(3).strip()

                    # Adicionar ano
                    data_inicio = parse_date(data_inicio_str + '/2026')
                    data_fim = parse_date(data_fim_str + '/2026')

                    if data_inicio and data_fim:
                        current_aluno['estagios'].append({
                            'data_inicio': data_inicio,
                            'data_fim': data_fim,
                            'local': local,
                            'modulo': current_modulo
                        })

        # Processar plantões
        if current_section == 'plantoes':
            # Detectar tipo de plantão
            if 'PA Cirurgia' in line:
                current_tipo_plantao = 'Cirurgia'
                continue
            elif 'PA Cl' in line or 'PA Clnica' in line or 'PA Clínica' in line:
                current_tipo_plantao = 'Clínica'
                continue

            # Detectar plantão (formato: " 19/04/2026 - Noturno")
            if re.match(r'^\s+\d+/\d+/\d+', line) and '-' in line:
                # Extrair data
                match = re.search(r'(\d+/\d+/\d+)', line)
                if match and current_tipo_plantao:
                    data_str = match.group(1)
                    data = parse_date(data_str)

                    # Extrair turno
                    turno = 'Diurno' if 'Diurno' in line else 'Noturno'

                    if data:
                        current_aluno['plantoes'].append({
                            'data': data,
                            'tipo': current_tipo_plantao,
                            'turno': turno
                        })

    # Adicionar último aluno
    if current_aluno and current_aluno['numero'] <= 76:
        alunos.append(current_aluno)

    return alunos

def gerar_sql(alunos):
    """Gera script SQL completo"""

    sql = """-- =============================================
-- IMPORTACAO COMPLETA - 5a SERIE MEDICA 2026
-- =============================================
--
-- Este script importa:
-- - 76 alunos da 5a serie
-- - Todos os estagios cadastrados
-- - Todos os plantoes cadastrados
--
-- Os alunos farao primeiro login para definir senha
--
-- =============================================

-- Desabilitar triggers temporariamente para performance
SET session_replication_role = 'replica';

-- =============================================
-- PARTE 1: INSERIR ALUNOS
-- =============================================

"""

    # Inserir alunos
    sql += "INSERT INTO usuarios (numero_chamada, serie, primeiro_acesso) VALUES\n"
    values = []
    for aluno in alunos:
        nome_clean = aluno['nome'].replace("'", "''")
        values.append(f"({aluno['numero']}, '5', true)  -- {nome_clean}")
    sql += ",\n".join(values) + "\nON CONFLICT (numero_chamada, serie) DO NOTHING;\n\n"

    # Atualizar nomes
    sql += "-- Atualizar nomes dos alunos\n"
    for aluno in alunos:
        nome_escaped = aluno['nome'].replace("'", "''")
        sql += f"UPDATE usuarios SET nome = '{nome_escaped}' WHERE numero_chamada = {aluno['numero']} AND serie = '5';\n"

    sql += "\n-- =============================================\n"
    sql += "-- PARTE 2: INSERIR ESTAGIOS\n"
    sql += "-- =============================================\n\n"

    # Inserir estágios
    estagios_count = 0
    for aluno in alunos:
        if aluno['estagios']:
            sql += f"\n-- Estagios do aluno #{aluno['numero']} - {aluno['nome'].replace("'", "''")}\n"
            sql += "INSERT INTO estagios (usuario_id, data_inicio, data_fim, local, modulo) \n"
            sql += "SELECT u.id, data_inicio::date, data_fim::date, local, modulo\n"
            sql += "FROM usuarios u, (\n  VALUES\n"

            values = []
            for estagio in aluno['estagios']:
                local_escaped = estagio['local'].replace("'", "''")
                modulo_escaped = estagio['modulo'].replace("'", "''")
                values.append(f"    ('{estagio['data_inicio']}', '{estagio['data_fim']}', '{local_escaped}', '{modulo_escaped}')")

            sql += ",\n".join(values)
            sql += f"\n) AS v(data_inicio, data_fim, local, modulo)\n"
            sql += f"WHERE u.numero_chamada = {aluno['numero']} AND u.serie = '5';\n"

            estagios_count += len(aluno['estagios'])

    sql += f"\n-- Total de estagios inseridos: {estagios_count}\n"

    sql += "\n-- =============================================\n"
    sql += "-- PARTE 3: INSERIR PLANTOES\n"
    sql += "-- =============================================\n\n"

    # Inserir plantões
    plantoes_count = 0
    for aluno in alunos:
        if aluno['plantoes']:
            sql += f"\n-- Plantoes do aluno #{aluno['numero']} - {aluno['nome'].replace("'", "''")}\n"
            sql += "INSERT INTO plantoes (usuario_id, data, tipo, turno) \n"
            sql += "SELECT u.id, data::date, tipo, turno\n"
            sql += "FROM usuarios u, (\n  VALUES\n"

            values = []
            for plantao in aluno['plantoes']:
                tipo_escaped = plantao['tipo'].replace("'", "''")
                turno_escaped = plantao['turno'].replace("'", "''")
                values.append(f"    ('{plantao['data']}', '{tipo_escaped}', '{turno_escaped}')")

            sql += ",\n".join(values)
            sql += f"\n) AS v(data, tipo, turno)\n"
            sql += f"WHERE u.numero_chamada = {aluno['numero']} AND u.serie = '5';\n"

            plantoes_count += len(aluno['plantoes'])

    sql += f"\n-- Total de plantoes inseridos: {plantoes_count}\n"

    # Reabilitar triggers
    sql += """
-- =============================================
-- FINALIZACAO
-- =============================================

-- Reabilitar triggers
SET session_replication_role = 'origin';

-- Verificar importacao
SELECT
    'Alunos' as tipo,
    COUNT(*) as total
FROM usuarios
WHERE serie = '5'

UNION ALL

SELECT
    'Estagios' as tipo,
    COUNT(*) as total
FROM estagios e
JOIN usuarios u ON e.usuario_id = u.id
WHERE u.serie = '5'

UNION ALL

SELECT
    'Plantoes' as tipo,
    COUNT(*) as total
FROM plantoes p
JOIN usuarios u ON p.usuario_id = u.id
WHERE u.serie = '5';

-- ✅ IMPORTACAO COMPLETA!
"""

    return sql

# Executar processamento
print("Processando arquivo...")
alunos = processar_arquivo('C:\\Users\\Usuário\\OneDrive\\Desktop\\TROCA PLANTAO FAMERP\\5a_Serie_Medica_2026_Estagios_Plantoes.txt')

print(f"OK - Processados {len(alunos)} alunos")

# Estatísticas
total_estagios = sum(len(a['estagios']) for a in alunos)
total_plantoes = sum(len(a['plantoes']) for a in alunos)

print(f"Total de estagios: {total_estagios}")
print(f"Total de plantoes: {total_plantoes}")

# Mostrar amostra
if alunos:
    print(f"\nExemplo - Aluno #1: {alunos[0]['nome']}")
    print(f"  Estagios: {len(alunos[0]['estagios'])}")
    print(f"  Plantoes: {len(alunos[0]['plantoes'])}")
    if alunos[0]['estagios']:
        print(f"  Primeiro estagio: {alunos[0]['estagios'][0]}")
    if alunos[0]['plantoes']:
        print(f"  Primeiro plantao: {alunos[0]['plantoes'][0]}")

# Gerar SQL
print("\nGerando SQL...")
sql = gerar_sql(alunos)

# Salvar arquivo
output_file = 'C:\\Users\\Usuário\\OneDrive\\Desktop\\TROCA PLANTAO FAMERP\\import-completo-5serie.sql'
with open(output_file, 'w', encoding='utf-8') as f:
    f.write(sql)

print(f"\nSQL gerado: {output_file}")
print("Pronto! Execute o SQL no Supabase para importar tudo!")
