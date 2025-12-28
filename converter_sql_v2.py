#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re

def parse_date_range(date_str):
    """Converte '5/1 a 9/1' para ('2026-01-05', '2026-01-09')"""
    date_str = date_str.strip()
    match = re.match(r'(\d+)/(\d+)\s+a\s+(\d+)/(\d+)', date_str)
    if match:
        d1, m1, d2, m2 = match.groups()
        inicio = f'2026-{m1.zfill(2)}-{d1.zfill(2)}'
        fim = f'2026-{m2.zfill(2)}-{d2.zfill(2)}'
        return inicio, fim
    return None, None

def get_periodo_num(periodo_str):
    """Extrai '1º PERÍODO...' -> 1"""
    match = re.match(r'(\d+)', periodo_str)
    return match.group(1) if match else '1'

# Ler arquivo
with open('import-completo-5serie.sql', 'r', encoding='utf-8') as f:
    lines = f.readlines()

output = []
i = 0

# PARTE 1: Copiar alunos (até linha ~260)
while i < len(lines):
    line = lines[i]
    if 'PARTE 2' in line or ('Aluno 1:' in line and 'INSERT INTO estagios' in lines[i+1] if i+1 < len(lines) else False):
        break
    output.append(line.rstrip())
    i += 1

# PARTE 2: Processar estágios
output.append('')
output.append('-- =============================================')
output.append('-- PARTE 2: INSERIR ESTAGIOS')
output.append('-- =============================================')
output.append('')

while i < len(lines):
    line = lines[i]

    # Parar quando chegar nos plantões
    if 'PARTE 3' in line or 'PLANT' in line.upper() and 'Aluno' in line:
        break

    # Comentário de aluno
    if line.startswith('-- Aluno'):
        output.append('')
        output.append(line.rstrip())
        i += 1
        continue

    # INSERT de estágio
    if 'INSERT INTO estagios' in line:
        # Regex para capturar os 4 campos + numero_chamada
        match = re.search(
            r"SELECT id, '([^']+)', '([^']+)', '([^']+)', '([^']+)' FROM usuarios WHERE numero_chamada = (\d+)",
            line
        )

        if match:
            periodo_str, modulo, semana, local, num = match.groups()
            data_inicio, data_fim = parse_date_range(semana)
            periodo_num = get_periodo_num(periodo_str)

            if data_inicio and data_fim:
                # Escape aspas simples
                local_esc = local.replace("'", "''")
                modulo_esc = modulo.replace("'", "''")

                # Gerar novo INSERT com colunas corretas
                new_line = (
                    f"INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) "
                    f"SELECT id, '{local_esc}', '{local_esc}', '{data_inicio}'::date, '{data_fim}'::date, {periodo_num}, '{modulo_esc}' "
                    f"FROM usuarios WHERE numero_chamada = {num} AND serie = '5';"
                )
                output.append(new_line)

    i += 1

# PARTE 3: Processar plantões
output.append('')
output.append('-- =============================================')
output.append('-- PARTE 3: INSERIR PLANTOES')
output.append('-- =============================================')
output.append('')

while i < len(lines):
    line = lines[i]

    # Comentário de aluno
    if line.startswith('-- Aluno'):
        output.append('')
        output.append(line.rstrip())
        i += 1
        continue

    # INSERT de plantão
    if 'INSERT INTO plantoes' in line:
        # Regex: SELECT id, 'data', 'dia_semana', 'turno', 'tipo'
        match = re.search(
            r"SELECT id, '([^']+)', '([^']*)', '([^']+)', '([^']+)' FROM usuarios WHERE numero_chamada = (\d+)",
            line
        )

        if match:
            data, dia_semana, turno, tipo, num = match.groups()

            # Escape aspas
            tipo_esc = tipo.replace("'", "''")
            turno_esc = turno.replace("'", "''")

            # Gerar novo INSERT sem dia_semana
            new_line = (
                f"INSERT INTO plantoes (usuario_id, tipo, data, turno) "
                f"SELECT id, '{tipo_esc}', '{data}'::date, '{turno_esc}' "
                f"FROM usuarios WHERE numero_chamada = {num} AND serie = '5';"
            )
            output.append(new_line)

    i += 1

# Adicionar verificação final
output.append('')
output.append('-- =============================================')
output.append('-- VERIFICACAO')
output.append('-- =============================================')
output.append('')
output.append("SELECT 'Alunos' as tipo, COUNT(*) as total FROM usuarios WHERE serie = '5'")
output.append('UNION ALL')
output.append("SELECT 'Estagios' as tipo, COUNT(*) FROM estagios e JOIN usuarios u ON e.usuario_id = u.id WHERE u.serie = '5'")
output.append('UNION ALL')
output.append("SELECT 'Plantoes' as tipo, COUNT(*) FROM plantoes p JOIN usuarios u ON p.usuario_id = u.id WHERE u.serie = '5';")
output.append('')
output.append('-- ✅ IMPORTACAO COMPLETA!')

# Salvar
with open('import-completo-5serie.sql', 'w', encoding='utf-8') as f:
    f.write('\n'.join(output))

print('SQL corrigido!')
print(f'Total de linhas: {len(output)}')
