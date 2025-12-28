// =============================================
// CLIENTE SUPABASE CUSTOMIZADO (SEM CDN)
// =============================================
// Este arquivo substitui a biblioteca do Supabase por fetch() puro
// Funciona em qualquer navegador sem bloqueios de tracking

class SupabaseClient {
    constructor(url, key) {
        this.url = url;
        this.key = key;
        this.headers = {
            'apikey': key,
            'Authorization': `Bearer ${key}`,
            'Content-Type': 'application/json',
            'Prefer': 'return=representation'
        };
    }

    // Método from() para consultas
    from(table) {
        return new SupabaseQuery(this.url, this.headers, table);
    }
}

class SupabaseQuery {
    constructor(url, headers, table) {
        this.url = url;
        this.headers = headers;
        this.table = table;
        this.selectFields = '*';
        this.filters = [];
        this.orderField = null;
        this.orderAscending = true;
        this.limitValue = null;
        this.offsetValue = null;
        this.singleRow = false;
    }

    // SELECT
    select(fields = '*') {
        this.selectFields = fields;
        return this;
    }

    // WHERE (eq, neq, gte, lte, etc)
    eq(column, value) {
        this.filters.push(`${column}=eq.${value}`);
        return this;
    }

    neq(column, value) {
        this.filters.push(`${column}=neq.${value}`);
        return this;
    }

    gte(column, value) {
        this.filters.push(`${column}=gte.${value}`);
        return this;
    }

    lte(column, value) {
        this.filters.push(`${column}=lte.${value}`);
        return this;
    }

    gt(column, value) {
        this.filters.push(`${column}=gt.${value}`);
        return this;
    }

    lt(column, value) {
        this.filters.push(`${column}=lt.${value}`);
        return this;
    }

    like(column, value) {
        this.filters.push(`${column}=like.${value}`);
        return this;
    }

    ilike(column, value) {
        this.filters.push(`${column}=ilike.${value}`);
        return this;
    }

    in(column, values) {
        this.filters.push(`${column}=in.(${values.join(',')})`);
        return this;
    }

    // ORDER BY
    order(column, options = {}) {
        this.orderField = column;
        this.orderAscending = options.ascending !== false;
        return this;
    }

    // LIMIT
    limit(n) {
        this.limitValue = n;
        return this;
    }

    // OFFSET
    offset(n) {
        this.offsetValue = n;
        return this;
    }

    // SINGLE (retorna apenas 1 registro)
    single() {
        this.singleRow = true;
        this.headers['Accept'] = 'application/vnd.pgrst.object+json';
        return this;
    }

    // Construir URL com filtros
    buildUrl() {
        let url = `${this.url}/rest/v1/${this.table}?select=${this.selectFields}`;

        if (this.filters.length > 0) {
            url += '&' + this.filters.join('&');
        }

        if (this.orderField) {
            url += `&order=${this.orderField}.${this.orderAscending ? 'asc' : 'desc'}`;
        }

        if (this.limitValue) {
            url += `&limit=${this.limitValue}`;
        }

        if (this.offsetValue) {
            url += `&offset=${this.offsetValue}`;
        }

        return url;
    }

    // Executar query (GET)
    async execute() {
        try {
            const url = this.buildUrl();
            const response = await fetch(url, {
                method: 'GET',
                headers: this.headers
            });

            if (!response.ok) {
                const error = await response.json();
                return {
                    data: null,
                    error: {
                        message: error.message || 'Erro na requisição',
                        code: error.code || response.status
                    }
                };
            }

            const data = await response.json();

            // Se single() e não encontrou nada, retornar erro PGRST116
            if (this.singleRow && !data) {
                return {
                    data: null,
                    error: { code: 'PGRST116', message: 'No rows found' }
                };
            }

            return { data, error: null };
        } catch (error) {
            return {
                data: null,
                error: { message: error.message, code: 'NETWORK_ERROR' }
            };
        }
    }

    // INSERT
    async insert(rows) {
        try {
            const url = `${this.url}/rest/v1/${this.table}`;
            const response = await fetch(url, {
                method: 'POST',
                headers: this.headers,
                body: JSON.stringify(rows)
            });

            if (!response.ok) {
                const error = await response.json();
                return {
                    data: null,
                    error: { message: error.message || 'Erro ao inserir', code: error.code }
                };
            }

            const data = await response.json();
            return { data, error: null };
        } catch (error) {
            return {
                data: null,
                error: { message: error.message, code: 'NETWORK_ERROR' }
            };
        }
    }

    // UPDATE
    async update(updates) {
        try {
            const url = this.buildUrl();
            const response = await fetch(url, {
                method: 'PATCH',
                headers: this.headers,
                body: JSON.stringify(updates)
            });

            if (!response.ok) {
                const error = await response.json();
                return {
                    data: null,
                    error: { message: error.message || 'Erro ao atualizar', code: error.code }
                };
            }

            const data = await response.json();
            return { data, error: null };
        } catch (error) {
            return {
                data: null,
                error: { message: error.message, code: 'NETWORK_ERROR' }
            };
        }
    }

    // DELETE
    async delete() {
        try {
            const url = this.buildUrl();
            const response = await fetch(url, {
                method: 'DELETE',
                headers: this.headers
            });

            if (!response.ok) {
                const error = await response.json();
                return {
                    data: null,
                    error: { message: error.message || 'Erro ao deletar', code: error.code }
                };
            }

            const data = await response.json();
            return { data, error: null };
        } catch (error) {
            return {
                data: null,
                error: { message: error.message, code: 'NETWORK_ERROR' }
            };
        }
    }

    // Aliases para compatibilidade
    then(resolve, reject) {
        return this.execute().then(resolve, reject);
    }
}

// Criar instância global do cliente
window.createSupabaseClient = function(url, key) {
    return new SupabaseClient(url, key);
};

console.log('✅ Cliente Supabase customizado carregado (sem CDN)');
