// =============================================
// CONFIGURAÇÃO DO SUPABASE
// =============================================

const SUPABASE_URL = 'https://nimnzddqstkhwqqpyfon.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5pbW56ZGRxc3RraHdxcXB5Zm9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY5NTUwOTYsImV4cCI6MjA4MjUzMTA5Nn0.GwP85k3zedVnBsfkzKbx-Qmsep7H8g1kEiri9MBgmf4';

// Inicializar cliente Supabase
const supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
