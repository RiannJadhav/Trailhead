-- Trailhead — Supabase setup script
-- Run this in your Supabase SQL Editor:
-- Dashboard → SQL Editor → New query → paste this → Run

-- 1. Create the climbs table
create table climbs (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users not null,
  at bigint not null,
  minutes integer not null,
  category text not null,
  manual boolean default false
);

-- 2. Enable Row Level Security
alter table climbs enable row level security;

-- 3. Create policy — users can only access their own rows
create policy "Users can manage their own climbs"
  on climbs for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
