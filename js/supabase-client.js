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
        this.headers = { ...headers };
        this.table = table;
        this.selectFields = '*';
        this.filters = [];
        this.orderField = null;
        this.orderAscending = true;
        this.limitValue = null;
        this.offsetValue = null;
        this.singleRow = false;

        // Armazenar tipo de operação e dados
        this.operation = 'SELECT'; // SELECT, INSERT, UPDATE, DELETE
        this.operationData = null;
    }

    // SELECT
    select(fields = '*') {
        this.selectFields = fields;
        this.operation = 'SELECT';
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
        // Criar cópia dos headers para não modificar o original
        this.headers = {
            ...this.headers,
            'Accept': 'application/vnd.pgrst.object+json'
        };
        return this;
    }

    // INSERT
    insert(rows) {
        this.operation = 'INSERT';
        this.operationData = rows;
        return this;
    }

    // UPDATE
    update(updates) {
        this.operation = 'UPDATE';
        this.operationData = updates;
        return this;
    }

    // DELETE
    delete() {
        this.operation = 'DELETE';
        return this;
    }

    // Construir URL com filtros
    buildUrl() {
        let url = `${this.url}/rest/v1/${this.table}`;

        if (this.operation === 'SELECT') {
            url += `?select=${this.selectFields}`;
            if (this.filters.length > 0) {
                url += '&' + this.filters.join('&');
            }
        } else {
            // Para UPDATE, DELETE com filtros
            if (this.filters.length > 0) {
                url += '?' + this.filters.join('&');
            }
        }

        if (this.orderField) {
            const separator = url.includes('?') ? '&' : '?';
            url += `${separator}order=${this.orderField}.${this.orderAscending ? 'asc' : 'desc'}`;
        }

        if (this.limitValue) {
            const separator = url.includes('?') ? '&' : '?';
            url += `${separator}limit=${this.limitValue}`;
        }

        if (this.offsetValue) {
            const separator = url.includes('?') ? '&' : '?';
            url += `${separator}offset=${this.offsetValue}`;
        }

        return url;
    }

    // Executar query
    async execute() {
        try {
            let url = this.buildUrl();
            let method = 'GET';
            let body = null;

            switch (this.operation) {
                case 'SELECT':
                    method = 'GET';
                    break;
                case 'INSERT':
                    method = 'POST';
                    body = JSON.stringify(this.operationData);
                    url = `${this.url}/rest/v1/${this.table}`;
                    if (this.selectFields !== '*') {
                        url += `?select=${this.selectFields}`;
                    }
                    break;
                case 'UPDATE':
                    method = 'PATCH';
                    body = JSON.stringify(this.operationData);
                    break;
                case 'DELETE':
                    method = 'DELETE';
                    break;
            }

            const options = {
                method: method,
                headers: this.headers
            };

            if (body) {
                options.body = body;
            }

            const response = await fetch(url, options);

            if (!response.ok) {
                let error;
                try {
                    error = await response.json();
                } catch (e) {
                    error = { message: `HTTP ${response.status}: ${response.statusText}` };
                }
                return {
                    data: null,
                    error: {
                        message: error.message || 'Erro na requisição',
                        code: error.code || response.status,
                        details: error.details || null,
                        hint: error.hint || null
                    }
                };
            }

            let data = null;
            const contentType = response.headers.get('content-type');
            if (contentType && contentType.includes('application/json')) {
                data = await response.json();
            }

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
                error: {
                    message: error.message,
                    code: 'NETWORK_ERROR',
                    details: error.toString()
                }
            };
        }
    }

    // Permitir await e .then()
    then(resolve, reject) {
        return this.execute().then(resolve, reject);
    }

    catch(reject) {
        return this.execute().catch(reject);
    }
}

// Criar instância global do cliente
window.createSupabaseClient = function(url, key) {
    return new SupabaseClient(url, key);
};

console.log('✅ Cliente Supabase customizado carregado (sem CDN)');
