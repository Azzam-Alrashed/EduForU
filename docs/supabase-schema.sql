-- EduForU Landing Page — Supabase schema
-- Run in Supabase SQL Editor after creating a project

-- Student waitlist
create table if not exists student_waitlist (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null unique,
  grade text not null,
  goal text,
  country text,
  created_at timestamptz not null default now()
);

-- Tutor interest
create table if not exists tutor_interest (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null unique,
  subjects text[] not null,
  experience text not null,
  profile_url text,
  notes text,
  created_at timestamptz not null default now()
);

-- Row Level Security: allow anonymous inserts only
alter table student_waitlist enable row level security;
alter table tutor_interest enable row level security;

create policy "Allow anonymous insert on student_waitlist"
  on student_waitlist for insert
  to anon
  with check (true);

create policy "Allow anonymous insert on tutor_interest"
  on tutor_interest for insert
  to anon
  with check (true);

-- No public read access (admin uses service role in dashboard)
