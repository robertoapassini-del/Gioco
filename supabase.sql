-- Classifica online di "Pallone nella Spacca".
-- Da incollare in Supabase: SQL Editor -> New query -> Run.

create table if not exists public.records (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 1 and 10 and name ~ '^[A-Z0-9 ]+$'),
  score integer not null check (score between 1 and 2100),
  created_at timestamptz not null default now()
);

alter table public.records enable row level security;

-- chiunque può leggere la classifica
create policy "leggi classifica" on public.records
  for select to anon using (true);

-- chiunque può aggiungere un record (ma non modificarlo né cancellarlo)
create policy "aggiungi record" on public.records
  for insert to anon with check (true);

create index if not exists records_score_idx on public.records (score desc, created_at);
