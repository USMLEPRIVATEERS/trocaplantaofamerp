#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Converte SQL gerado pela IA para o formato correto do banco
"""

import re

def parse_date_range(date_str):
    """Converte '5/1 a 9/1' para ('2026-01-05', '2026-01-09')"""
    date_str = date_str.strip().strip("'")
    match = re.match(r'(\d+)/(\d+)\s+a\s+(\d+)/(\d+)', date_str)
    if match:
        d1, m1, d2, m2 = match.groups()
        inicio = f'2026-{m1.zfill(2)}-{d1.zfill(2)}'
        fim = f'2026-{m2.zfill(2)}-{d2.zfill(2)}'
        return inicio, fim
    return None, None

def parse_date_single(date_str):
    """Converte '19/04/2026' para '2026-04-19'"""
    date_str = date_str.strip().strip("'")
    match = re.match(r'(\d+)/(\d+)/(\d+)', date_str)
    if match:
        d, m, y = match.groups()
        return f'{y}-{m.zfill(2)}-{d.zfill(2)}'
    return None

def get_periodo_num(periodo_str):
    """Extrai número do período '1º PERÍODO' -> 1"""
    match = re.match(r'(\d+)', periodo_str)
    if match:
        return match.group(1)
    return '1'

def process_file():
    # Ler arquivo
    with open('import-completo-5serie.sql', 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.split('\n')
    output = []

    # Parte 1: Copiar tudo até PARTE 2
    in_part1 = True
    for line in lines:
        if 'PARTE 2' in line:
            in_part1 = False
            break
        output.append(line)

    # Adicionar PARTE 2 manualmente
    output.append('')
    output.append('-- =============================================')
    output.append('-- PARTE 2: INSERIR ESTAGIOS')
    output.append('-- =============================================')
    output.append('')
    output.append('SET session_replication_role = \'replica\';')
    output.append('')

    # Processar estágios - ler novamente e converter
    estagios_por_aluno = {}
    current_aluno = None

    for line in lines:
        # Detectar comentário de aluno
        match = re.match(r'-- Aluno (\d+):', line)
        if match:
            current_aluno = int(match.group(1))
            estagios_por_aluno[current_aluno] = []
            continue

        # Processar INSERT de estágio
        if current_aluno and 'INSERT INTO estagios' in line:
            # Extrair dados: periodo, modulo, semana, local_estagio
            match = re.search(
                r"'([^']+)',\s*'([^']+)',\s*'([^']+)',\s*'([^']+)'.*numero_chamada = (\d+)",
                line
            )
            if match:
                periodo_str, modulo, semana, local, num = match.groups()
                data_inicio, data_fim = parse_date_range(semana)
                periodo_num = get_periodo_num(periodo_str)

                if data_inicio and data_fim:
                    estagios_por_aluno[current_aluno].append({
                        'data_inicio': data_inicio,
                        'data_fim': data_fim,
                        'local': local,
                        'modulo': modulo,
                        'periodo': periodo_num,
                        'nome': local  # usar local como nome também
                    })

    # Gerar INSERTs corretos de estágios
    for aluno_num in sorted(estagios_por_aluno.keys()):
        estagios = estagios_por_aluno[aluno_num]
        if not estagios:
            continue

        output.append(f'-- Aluno {aluno_num}')
        output.append(f'INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo)')
        output.append(f'SELECT id, nome, local, data_inicio::date, data_fim::date, periodo::integer, modulo')
        output.append(f'FROM usuarios, (')
        output.append(f'  VALUES')

        values = []
        for est in estagios:
            nome_esc = est['nome'].replace("'", "''")
            local_esc = est['local'].replace("'", "''")
            modulo_esc = est['modulo'].replace("'", "''")
            values.append(
                f"    ('{nome_esc}', '{local_esc}', '{est['data_inicio']}', '{est['data_fim']}', '{est['periodo']}', '{modulo_esc}')"
            )

        output.append(',\n'.join(values))
        output.append(f') AS v(nome, local, data_inicio, data_fim, periodo, modulo)')
        output.append(f'WHERE numero_chamada = {aluno_num} AND serie = \'5\';')
        output.append('')

    output.append('SET session_replication_role = \'origin\';')
    output.append('')

    # PARTE 3: PLANTÕES
    output.append('-- =============================================')
    output.append('-- PARTE 3: INSERIR PLANTOES')
    output.append('-- =============================================')
    output.append('')
    output.append('SET session_replication_role = \'replica\';')
    output.append('')

    # Processar plantões
    plantoes_por_aluno = {}
    current_aluno = None
    in_plantoes = False

    for line in lines:
        if 'PARTE 3' in line or 'PLANT' in line.upper() and 'PARTE' not in line:
            in_plantoes = True
            continue

        if not in_plantoes:
            continue

        # Detectar comentário de aluno
        match = re.match(r'-- Aluno (\d+):', line)
        if match:
            current_aluno = int(match.group(1))
            plantoes_por_aluno[current_aluno] = []
            continue

        # Processar INSERT de plantão
        if current_aluno and 'INSERT INTO plantoes' in line:
            # Extrair dados
            match = re.search(
                r"'([^']+)',\s*'([^']+)',\s*'([^']+)'.*numero_chamada = (\d+)",
                line
            )
            if match:
                tipo, data_str, turno, num = match.groups()
                data = parse_date_single(data_str)

                if data:
                    plantoes_por_aluno[current_aluno].append({
                        'tipo': tipo,
                        'data': data,
                        'turno': turno
                    })

    # Gerar INSERTs corretos de plantões
    for aluno_num in sorted(plantoes_por_aluno.keys()):
        plantoes = plantoes_por_aluno[aluno_num]
        if not plantoes:
            continue

        output.append(f'-- Aluno {aluno_num}')
        output.append(f'INSERT INTO plantoes (usuario_id, tipo, data, turno)')
        output.append(f'SELECT id, tipo, data::date, turno')
        output.append(f'FROM usuarios, (')
        output.append(f'  VALUES')

        values = []
        for pl in plantoes:
            tipo_esc = pl['tipo'].replace("'", "''")
            turno_esc = pl['turno'].replace("'", "''")
            values.append(
                f"    ('{tipo_esc}', '{pl['data']}', '{turno_esc}')"
            )

        output.append(',\n'.join(values))
        output.append(f') AS v(tipo, data, turno)')
        output.append(f'WHERE numero_chamada = {aluno_num} AND serie = \'5\';')
        output.append('')

    output.append('SET session_replication_role = \'origin\';')
    output.append('')

    # Adicionar verificação final
    output.append('-- =============================================')
    output.append('-- VERIFICACAO')
    output.append('-- =============================================')
    output.append('')
    output.append('SELECT \'Alunos\' as tipo, COUNT(*) as total FROM usuarios WHERE serie = \'5\'')
    output.append('UNION ALL')
    output.append('SELECT \'Estagios\' as tipo, COUNT(*) FROM estagios e JOIN usuarios u ON e.usuario_id = u.id WHERE u.serie = \'5\'')
    output.append('UNION ALL')
    output.append('SELECT \'Plantoes\' as tipo, COUNT(*) FROM plantoes p JOIN usuarios u ON p.usuario_id = u.id WHERE u.serie = \'5\';')
    output.append('')
    output.append('-- IMPORTACAO COMPLETA!')

    # Salvar
    with open('import-completo-5serie-CORRIGIDO.sql', 'w', encoding='utf-8') as f:
        f.write('\n'.join(output))

    print('SQL corrigido gerado: import-completo-5serie-CORRIGIDO.sql')
    print(f'Total de alunos com estagios: {len(estagios_por_aluno)}')
    print(f'Total de alunos com plantoes: {len(plantoes_por_aluno)}')
    total_estagios = sum(len(v) for v in estagios_por_aluno.values())
    total_plantoes = sum(len(v) for v in plantoes_por_aluno.values())
    print(f'Total de estagios: {total_estagios}')
    print(f'Total de plantoes: {total_plantoes}')

# Executar
process_file()
