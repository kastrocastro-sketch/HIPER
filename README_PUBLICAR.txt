PROJETO HIPERTROFIA · LUCAS V3

1. PUBLICAR NA VERCEL
- Conecte sua conta Vercel no ChatGPT para permitir publicação assistida, ou crie um projeto estático no painel Vercel.
- Envie a pasta deste pacote como a raiz do projeto (index.html no topo). Não é necessário comando de build.
- Depois de publicado em HTTPS, abra no Chrome Android e use ⋮ > Instalar app.

2. SALVAMENTO E MIGRAÇÃO
- O app salva por padrão no navegador. O ID do armazenamento foi mantido para compatibilidade com a V1/V2 NA MESMA ORIGEM.
- Mudou de domínio? Exporte JSON na versão antiga e importe na V3; localStorage não é compartilhado entre domínios.

3. SINCRONIZAÇÃO ENTRE DISPOSITIVOS (OPCIONAL)
- Crie um projeto Supabase. Rode supabase_setup.sql no SQL Editor.
- Ative Email/Password no Auth e verificação de e-mail conforme preferir.
- Configure na aba Ajustes somente a URL do projeto e a chave PUBLICA (anon / publishable). NUNCA informe service_role nem secret.
- Crie conta e entre; use Enviar Dados no dispositivo original e Baixar Dados no novo.
- A sincronização é MANUAL e substitui a cópia de destino. Exporte backups antes de transferir.
- Por segurança, o app não envia dados pessoais ou de saúde automaticamente.

OBS: Não foi publicado em domínio real neste pacote. Para isso é preciso autorizar a conexão da hospedagem.
