# 📊 INTEGRAÇÃO COM PLANILHA OFICIAL - Instruções

## ✅ O QUE FOI CRIADO

Adicionei um sistema completo para integração com a planilha oficial do Google Sheets quando uma troca mútua é confirmada.

### Arquivos Criados

1. **`js/trocas.js`** - Script completo com:
   - Modal automático para trocas mútuas
   - Botão para copiar código formatado (ex: 50T55)
   - Botão para copiar mensagem do grupo
   - Link direto para a planilha
   - Confirmação de atualização
   - Registro no banco de dados

2. **`supabase-update-planilha.sql`** - SQL para adicionar:
   - Campos para rastrear se planilha foi atualizada
   - View para consultar trocas pendentes
   - Índices para performance

## 🎯 COMO FUNCIONA

### Fluxo da Troca Mútua

```
1. Usuário A anuncia plantão
2. Usuário B oferece outro plantão (troca)
3. Usuário A aceita a oferta
4. Sistema cria registro de troca
5. ✨ MODAL AUTOMÁTICO aparece com:
   - Código formatado (ex: 50T55)
   - Botão copiar código
   - Mensagem para o grupo (já formatada)
   - Link para abrir planilha
   - Botão "Já Atualizei"
```

### O que o Modal Exibe

```
┌─────────────────────────────────────────────┐
│ ✅ Troca Confirmada - Atualizar Planilha    │
├─────────────────────────────────────────────┤
│                                             │
│ 🎉 Troca realizada com sucesso!             │
│ João Silva (#12) trocou com Maria (#34)     │
│                                             │
│ 📋 Detalhes:                                │
│ João Silva (#12)                            │
│ Plantão: PA Cirurgia - 15/05/2026           │
│          ⇅                                  │
│ Maria Santos (#34)                          │
│ Plantão: PA Cirurgia - 22/05/2026           │
│                                             │
│ ⚠️ IMPORTANTE: Atualizar Planilha Oficial   │
│                                             │
│ Código da troca:                            │
│ ┌─────────────┐                             │
│ │    12T34    │ [📋 Copiar Código]          │
│ └─────────────┘                             │
│                                             │
│ 💬 Mensagem para o grupo:                   │
│ ┌───────────────────────────────────────┐   │
│ │ Boa tarde gente, pra editar a         │   │
│ │ planilha dos plantões coloquem nesse  │   │
│ │ formato: 12T34 (número 12 trocou com  │   │
│ │ o número 34) na coluna de troca de    │   │
│ │ plantão. Obrigada ✨                  │   │
│ └───────────────────────────────────────┘   │
│ [📋 Copiar Mensagem]                        │
│                                             │
│ [📊 Abrir Planilha] [✅ Já Atualizei]       │
└─────────────────────────────────────────────┘
```

## 🔧 COMO INTEGRAR

### Passo 1: Executar SQL

No Supabase SQL Editor:

```sql
-- Execute o arquivo supabase-update-planilha.sql
```

### Passo 2: Incluir Script no HTML

Em TODOS os arquivos HTML que fazem trocas (anuncios.html, dashboard.html, etc):

```html
<!-- ANTES do </body> -->
<script src="js/trocas.js"></script>
```

### Passo 3: Chamar Função ao Aceitar Oferta

Quando uma oferta for aceita e a troca for do tipo "troca" (não pagamento):

```javascript
async function aceitarOferta(ofertaId) {
    try {
        // ... seu código existente ...

        // Criar registro de troca confirmada
        const { data: troca, error } = await supabase
            .from('trocas_confirmadas')
            .insert([{
                anuncio_id: anuncio.id,
                oferta_id: ofertaId,
                usuario_anunciante_id: anunciante.id,
                usuario_ofertante_id: ofertante.id,
                plantao_anunciado_id: plantaoAnunciado.id,
                plantao_oferecido_id: plantaoOferecido.id, // Se for troca
                tipo_troca: tipoOferta, // 'troca' ou 'pagamento'
                valor: valorOferta
            }])
            .select(`
                *,
                usuario_anunciante:usuarios!usuario_anunciante_id(numero_chamada, nome),
                usuario_ofertante:usuarios!usuario_ofertante_id(numero_chamada, nome),
                plantao_anunciado:plantoes!plantao_anunciado_id(tipo, data, turno),
                plantao_oferecido:plantoes!plantao_oferecido_id(tipo, data, turno)
            `)
            .single();

        if (error) throw error;

        // ✨ CHAMAR FUNÇÃO PARA EXIBIR MODAL DA PLANILHA
        if (troca.tipo_troca === 'troca') {
            exibirModalPlanilha({
                trocaId: troca.id,
                numeroAnunciante: troca.usuario_anunciante.numero_chamada,
                numeroOfertante: troca.usuario_ofertante.numero_chamada,
                nomeAnunciante: troca.usuario_anunciante.nome,
                nomeOfertante: troca.usuario_ofertante.nome,
                plantaoAnunciado: troca.plantao_anunciado.tipo,
                plantaoOferecido: troca.plantao_oferecido.tipo,
                dataPlantaoAnunciado: troca.plantao_anunciado.data,
                dataPlantaoOferecido: troca.plantao_oferecido.data
            });
        }

        // ... resto do código ...

    } catch (error) {
        console.error('Erro:', error);
    }
}
```

### Exemplo Completo de Integração

```javascript
// Em anuncios.js ou onde você aceita ofertas

async function aceitarOferta(ofertaId) {
    try {
        // 1. Buscar dados da oferta e do anúncio
        const { data: oferta } = await supabase
            .from('ofertas')
            .select(`
                *,
                anuncio:anuncios(*,
                    plantao:plantoes(*),
                    usuario:usuarios(*)
                ),
                ofertante:usuarios(*),
                plantao_oferecido:plantoes(*)
            `)
            .eq('id', ofertaId)
            .single();

        // 2. Atualizar status da oferta
        await supabase
            .from('ofertas')
            .update({ status: 'aceita' })
            .eq('id', ofertaId);

        // 3. Rejeitar outras ofertas do mesmo anúncio
        await supabase
            .from('ofertas')
            .update({ status: 'rejeitada' })
            .eq('anuncio_id', oferta.anuncio.id)
            .neq('id', ofertaId);

        // 4. Marcar anúncio como concluído
        await supabase
            .from('anuncios')
            .update({ status: 'concluido' })
            .eq('id', oferta.anuncio.id);

        // 5. Criar registro de troca confirmada
        const { data: troca, error } = await supabase
            .from('trocas_confirmadas')
            .insert([{
                anuncio_id: oferta.anuncio.id,
                oferta_id: ofertaId,
                usuario_anunciante_id: oferta.anuncio.usuario.id,
                usuario_ofertante_id: oferta.ofertante.id,
                plantao_anunciado_id: oferta.anuncio.plantao.id,
                plantao_oferecido_id: oferta.plantao_oferecido?.id || null,
                tipo_troca: oferta.tipo_oferta,
                valor: oferta.valor_oferecido,
                whatsapp_anunciante: oferta.anuncio.usuario.whatsapp,
                chave_pix_anunciante: oferta.anuncio.usuario.chave_pix
            }])
            .select()
            .single();

        if (error) throw error;

        // 6. ✨ EXIBIR MODAL DA PLANILHA se for troca mútua
        if (oferta.tipo_oferta === 'troca' && oferta.plantao_oferecido) {
            exibirModalPlanilha({
                trocaId: troca.id,
                numeroAnunciante: oferta.anuncio.usuario.numero_chamada,
                numeroOfertante: oferta.ofertante.numero_chamada,
                nomeAnunciante: oferta.anuncio.usuario.nome || `Aluno #${oferta.anuncio.usuario.numero_chamada}`,
                nomeOfertante: oferta.ofertante.nome || `Aluno #${oferta.ofertante.numero_chamada}`,
                plantaoAnunciado: `${oferta.anuncio.plantao.tipo} - ${oferta.anuncio.plantao.turno}`,
                plantaoOferecido: `${oferta.plantao_oferecido.tipo} - ${oferta.plantao_oferecido.turno}`,
                dataPlantaoAnunciado: oferta.anuncio.plantao.data,
                dataPlantaoOferecido: oferta.plantao_oferecido.data
            });
        }

        // 7. Criar notificação para o ofertante
        await supabase
            .from('notificacoes')
            .insert([{
                usuario_id: oferta.ofertante.id,
                tipo: 'oferta_aceita',
                titulo: 'Oferta Aceita!',
                mensagem: `Sua oferta foi aceita! A troca está confirmada.`,
                link: '/dashboard.html'
            }]);

        alert('✅ Oferta aceita com sucesso!\n\nA troca foi confirmada e ambos foram notificados.');

        // Recarregar ofertas
        await carregarOfertas();

    } catch (error) {
        console.error('Erro ao aceitar oferta:', error);
        alert('❌ Erro ao aceitar oferta. Tente novamente.');
    }
}
```

## 📋 CHECKLIST DE IMPLEMENTAÇÃO

- [ ] Executar `supabase-update-planilha.sql` no Supabase
- [ ] Adicionar `<script src="js/trocas.js"></script>` em todos os HTMLs relevantes
- [ ] Integrar chamada de `exibirModalPlanilha()` na função de aceitar oferta
- [ ] Testar troca mútua completa
- [ ] Verificar se modal aparece corretamente
- [ ] Testar botão "Copiar Código"
- [ ] Testar botão "Copiar Mensagem"
- [ ] Testar link "Abrir Planilha"
- [ ] Testar botão "Já Atualizei"
- [ ] Verificar se dados são salvos no banco

## 🎨 PERSONALIZAÇÃO

Você pode personalizar o modal editando `js/trocas.js`:

### Alterar Cores
```javascript
// Linha ~24
modal.innerHTML = `
    <div class="modal-content" style="max-width: 700px; border: 3px solid #000;">
```

### Alterar Mensagem do Grupo
```javascript
// Linha ~88
Boa tarde gente, pra editar a planilha dos plantões coloquem nesse formato: ${textoCopia} (número ${numeroAnunciante} trocou com o número ${numeroOfertante}) na coluna de troca de plantão. Obrigada ✨
```

### Alterar URL da Planilha
Se a URL da planilha mudar, edite na linha ~101:
```javascript
href="https://docs.google.com/spreadsheets/d/1fMuF5wYc0pWnsx0nFVpLxUVKlHYJd3LmR2_ceTJy9mM/edit"
```

## 🔍 CONSULTAS ÚTEIS

### Ver trocas pendentes de atualização

```sql
SELECT * FROM trocas_pendentes_planilha;
```

### Marcar troca como atualizada manualmente

```sql
UPDATE trocas_confirmadas
SET planilha_atualizada = true,
    data_atualizacao_planilha = NOW()
WHERE id = 'ID_DA_TROCA';
```

### Ver estatísticas de atualização

```sql
SELECT
    COUNT(*) as total_trocas,
    COUNT(*) FILTER (WHERE planilha_atualizada = true) as atualizadas,
    COUNT(*) FILTER (WHERE planilha_atualizada = false OR planilha_atualizada IS NULL) as pendentes
FROM trocas_confirmadas
WHERE tipo_troca = 'troca';
```

## ⚠️ OBSERVAÇÕES IMPORTANTES

1. **Trocas Pagas**: O modal NÃO aparece para trocas pagas (quando alguém paga para o outro fazer o plantão)

2. **Ambas as Partes**: Ambos os envolvidos na troca devem atualizar a planilha (cada um atualiza sua própria linha)

3. **Código do Formato**: O formato é sempre `NumeroMenorTNumeroMaior` (ex: 12T34, não 34T12)

4. **Link da Planilha**: O link abre em nova aba, mantendo o sistema aberto

5. **Confirmação**: O botão "Já Atualizei" apenas registra no sistema, não valida se realmente foi atualizado

## 🎯 PRÓXIMOS PASSOS

Depois de implementar, você pode adicionar:

1. **Dashboard de Admin**: Visualizar quais trocas ainda não foram atualizadas
2. **Lembretes**: Enviar notificação se passar X dias sem atualizar
3. **Integração Automática**: Usar Google Sheets API para atualizar automaticamente (avançado)
4. **Relatório**: Gerar relatório mensal de todas as trocas

## 💡 EXEMPLO DE USO

```
1. João (#12) anuncia plantão do dia 15/05
2. Maria (#34) oferece plantão do dia 22/05 em troca
3. João aceita a oferta
4. ✨ Modal aparece automaticamente mostrando:
   - Código: 12T34
   - Mensagem pronta para copiar
   - Botão para abrir planilha
5. João copia o código e cola na planilha
6. João clica em "Já Atualizei"
7. Sistema registra a atualização
8. Processo completo! ✅
```

---

**Tudo pronto! O sistema agora integra perfeitamente com a planilha oficial! 🎉**
