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

# Ler BACKUP
with open('import-completo-5serie-BACKUP.sql', 'r', encoding='utf-8') as f:
    content = f.read()

# Processar linha por linha
lines = content.split('\n')
output = []

for line in lines:
    # Manter tudo até DELETE
    if 'DELETE FROM estagios' in line or 'DELETE FROM plantoes' in line:
        continue

    # Substituir INSERT de estágios
    if 'INSERT INTO estagios (usuario_id, periodo, modulo, semana, local_estagio)' in line:
        match = re.search(
            r"SELECT id, '([^']+)', '([^']+)', '([^']+)', '([^']+)' FROM usuarios WHERE numero_chamada = (\d+)",
            line
        )

        if match:
            periodo_str, modulo, semana, local, num = match.groups()
            data_inicio, data_fim = parse_date_range(semana)
            periodo_num = get_periodo_num(periodo_str)

            if data_inicio and data_fim:
                local_esc = local.replace("'", "''")
                modulo_esc = modulo.replace("'", "''")

                new_line = (
                    f"INSERT INTO estagios (usuario_id, nome, local, data_inicio, data_fim, periodo, modulo) "
                    f"SELECT id, '{local_esc}', '{local_esc}', '{data_inicio}'::date, '{data_fim}'::date, {periodo_num}, '{modulo_esc}' "
                    f"FROM usuarios WHERE numero_chamada = {num} AND serie = '5';"
                )
                output.append(new_line)
                continue

    # Substituir INSERT de plantões
    elif 'INSERT INTO plantoes (usuario_id, data, dia_semana, turno, tipo)' in line:
        match = re.search(
            r"SELECT id, '([^']+)', '([^']*)', '([^']+)', '([^']+)' FROM usuarios WHERE numero_chamada = (\d+)",
            line
        )

        if match:
            data, dia_semana, turno, tipo, num = match.groups()
            tipo_esc = tipo.replace("'", "''")
            turno_esc = turno.replace("'", "''")

            new_line = (
                f"INSERT INTO plantoes (usuario_id, tipo, data, turno) "
                f"SELECT id, '{tipo_esc}', '{data}'::date, '{turno_esc}' "
                f"FROM usuarios WHERE numero_chamada = {num} AND serie = '5';"
            )
            output.append(new_line)
            continue

    # Manter linha original
    output.append(line)

# Salvar
with open('import-completo-5serie.sql', 'w', encoding='utf-8') as f:
    f.write('\n'.join(output))

# Estatísticas
total_estagios = len([l for l in output if 'INSERT INTO estagios' in l])
total_plantoes = len([l for l in output if 'INSERT INTO plantoes' in l])

print('SQL CORRIGIDO!')
print(f'Total de linhas: {len(output)}')
print(f'Total de INSERTs de estagios: {total_estagios}')
print(f'Total de INSERTs de plantoes: {total_plantoes}')
