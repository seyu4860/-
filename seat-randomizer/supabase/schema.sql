-- Supabase 대시보드 > SQL Editor에 붙여 넣고 Run
create table if not exists public.seat_layouts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  name text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  unique (user_id, name)
);

alter table public.seat_layouts enable row level security;

create policy "본인 배치 조회" on public.seat_layouts
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "본인 배치 저장" on public.seat_layouts
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "본인 배치 수정" on public.seat_layouts
  for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "본인 배치 삭제" on public.seat_layouts
  for delete to authenticated using ((select auth.uid()) = user_id);
