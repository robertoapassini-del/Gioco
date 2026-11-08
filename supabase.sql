-- Classifica online di "Pallone nella Spacca".
-- Da incollare in Supabase: SQL Editor -> New query -> Run.
-- Si può eseguire anche più volte: non cancella i record già salvati.

create table if not exists public.records (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 1 and 10 and name ~ '^[A-Z0-9 ]+$'),
  score integer not null check (score between 1 and 2100),
  created_at timestamptz not null default now()
);

-- modalità: 'tiri' (sfida tra amici, score = altezza) o 'scalata' (score = livello raggiunto)
alter table public.records add column if not exists mode text not null default 'tiri';
alter table public.records drop constraint if exists records_mode_check;
alter table public.records add constraint records_mode_check check (mode in ('tiri', 'scalata'));

alter table public.records enable row level security;

-- chiunque può leggere la classifica
drop policy if exists "leggi classifica" on public.records;
create policy "leggi classifica" on public.records
  for select to anon using (true);

-- chiunque può aggiungere un record (ma non modificarlo né cancellarlo)
drop policy if exists "aggiungi record" on public.records;
create policy "aggiungi record" on public.records
  for insert to anon with check (true);

create index if not exists records_mode_score_idx on public.records (mode, score desc, created_at);
