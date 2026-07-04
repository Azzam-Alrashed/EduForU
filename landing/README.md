# EduForU Landing Page

Arabic-first, RTL pre-launch landing page for EduForU — student waitlist + tutor interest forms.

## Stack

- [Astro 7](https://astro.build)
- Tailwind CSS v4
- Supabase (form backend)
- Vercel (deployment)

## Development

```bash
cd landing
npm install
cp .env.example .env
# Add Supabase credentials to .env
npm run dev
```

Open [http://localhost:4321](http://localhost:4321).

## Supabase setup

1. Create a project at [supabase.com](https://supabase.com)
2. Run the SQL in [../docs/supabase-schema.sql](../docs/supabase-schema.sql)
3. Copy Project URL and anon key to `.env`

## Deploy to Vercel

1. Import the repo and set root directory to `landing`
2. Add environment variables **before the first deploy** (Vite embeds `PUBLIC_*` vars at build time):
   - `PUBLIC_SUPABASE_URL`
   - `PUBLIC_SUPABASE_ANON_KEY`
   - Optional: `PUBLIC_PLAUSIBLE_DOMAIN`
3. Deploy

Or via CLI:

```bash
cd landing
npx vercel --prod
```

## Project structure

```
src/
  components/   # Page sections
  layouts/      # BaseLayout with SEO meta
  lib/          # Constants, Supabase client
  pages/        # index.astro
  styles/       # global.css (Tailwind)
public/         # favicon, og-image, robots.txt
```
