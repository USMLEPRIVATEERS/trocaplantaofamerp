// =============================================
// CONFIGURAÇÃO DO SUPABASE
// =============================================

const SUPABASE_URL = 'https://nimnzddqstkhwqqpyfon.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5pbW56ZGRxc3RraHdxcXB5Zm9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY5NTUwOTYsImV4cCI6MjA4MjUzMTA5Nn0.GwP85k3zedVnBsfkzKbx-Qmsep7H8g1kEiri9MBgmf4';

// Inicializar cliente Supabase
let supabase;

// Verificar se o Supabase está carregado
if (typeof window.supabase !== 'undefined' && window.supabase.createClient) {
    supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
    console.log('Supabase inicializado com sucesso');
} else {
    console.error('Erro: Supabase não foi carregado. Verifique sua conexão com a internet.');
    alert('Erro ao carregar o sistema. Por favor, recarregue a página ou verifique sua conexão com a internet.');
}
