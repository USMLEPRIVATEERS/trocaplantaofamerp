// =============================================
// CONFIGURAÇÃO DO SUPABASE
// =============================================

const SUPABASE_URL = 'https://nimnzddqstkhwqqpyfon.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5pbW56ZGRxc3RraHdxcXB5Zm9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY5NTUwOTYsImV4cCI6MjA4MjUzMTA5Nn0.GwP85k3zedVnBsfkzKbx-Qmsep7H8g1kEiri9MBgmf4';

// Inicializar cliente Supabase usando nosso cliente customizado
// Funciona em QUALQUER navegador sem bloqueios
var supabase;

if (!supabase) {
    // Usar nosso cliente customizado (sem CDN)
    if (typeof window.createSupabaseClient !== 'undefined') {
        supabase = window.createSupabaseClient(SUPABASE_URL, SUPABASE_ANON_KEY);
        console.log('✅ Supabase inicializado com sucesso (cliente customizado)');
    } else {
        console.error('❌ Erro: Cliente Supabase não foi carregado');
        alert('Erro ao carregar o sistema. Por favor, recarregue a página.');
    }
}
