// =============================================
// CONFIGURAÇÃO DO SUPABASE
// =============================================
// IMPORTANTE: Renomeie este arquivo para config.js
// e adicione suas credenciais do Supabase
// =============================================

const SUPABASE_URL = 'https://SEU_PROJETO.supabase.co';
const SUPABASE_ANON_KEY = 'SUA_CHAVE_ANONIMA_AQUI';

// Inicializar cliente Supabase
const supabase = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
