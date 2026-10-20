-- Execute apenas no SQL Editor do SEU projeto Supabase.
-- Cada usuário só pode acessar seu próprio registro graças às políticas RLS.
create table if not exists public.workout_backups (
 user_id uuid primary key references auth.users(id) on delete cascade,
 data jsonb not null,
 updated_at timestamptz not null default now()
);
alter table public.workout_backups enable row level security;
revoke all on public.workout_backups from anon;
grant select,insert,update on public.workout_backups to authenticated;
drop policy if exists "read own workouts" on public.workout_backups;
create policy "read own workouts" on public.workout_backups for select to authenticated using (auth.uid() = user_id);
drop policy if exists "insert own workouts" on public.workout_backups;
create policy "insert own workouts" on public.workout_backups for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "update own workouts" on public.workout_backups;
create policy "update own workouts" on public.workout_backups for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
