-- Classifica online di "Pallone nella Spacca".
-- Da incollare in Supabase: SQL Editor -> New query -> Run.
-- Modalità: 'tiri' (multiplayer, score = incastri) o 'scalata' (single player, score = livello).

create table if not exists records (
  id bigserial primary key,
  name text not null check (char_length(name) between 1 and 10),
  score int not null check (score between 1 and 2100),
  mode text not null default 'tiri',
  created_at timestamptz not null default now()
);

alter table records enable row level security;

drop policy if exists "leggi" on records;
create policy "leggi" on records for select to anon using (true);

drop policy if exists "scrivi" on records;
create policy "scrivi" on records for insert to anon with check (true);
