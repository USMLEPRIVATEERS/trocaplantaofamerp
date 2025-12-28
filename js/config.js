// =============================================
// CONFIGURAÇÃO DO SUPABASE
// =============================================

const SUPABASE_URL = 'https://nimnzddqstkhwqqpyfon.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5pbW56ZGRxc3RraHdxcXB5Zm9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY5NTUwOTYsImV4cCI6MjA4MjUzMTA5Nn0.GwP85k3zedVnBsfkzKbx-Qmsep7H8g1kEiri9MBgmf4';

// Inicializar cliente Supabase
// Usar var ao invés de let/const para evitar erro de redeclaração em caso de múltiplos carregamentos
var supabase;

// Só inicializar se ainda não foi inicializado
if (!supabase) {
    // Verificar se o Supabase CDN está carregado
    if (typeof window.supabase !== 'undefined' && window.supabase.createClient) {
        supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
        console.log('✅ Supabase inicializado com sucesso');
    } else {
        console.error('❌ Erro: Supabase CDN não foi carregado.');
        console.error('Por favor, desative o bloqueio de rastreamento do seu navegador para este site.');
        alert('⚠️ Erro ao carregar o sistema.\n\nO navegador está bloqueando o carregamento do Supabase.\n\nPor favor:\n1. Desative a "Prevenção de Rastreamento" do seu navegador\n2. Recarregue a página (F5)\n\nOu use outro navegador (Chrome recomendado).');
    }
}
