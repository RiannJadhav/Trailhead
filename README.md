# Trailhead — Visual Focus Timer

A beautiful mountain-themed Pomodoro and goal tracker. Watch a tiny climber ascend a peak with every session you complete. Built as a production-ready two-file web app with real authentication and cloud sync.

**[Live Demo →](https://trailhead-livid.vercel.app/)**

---

## What's included

- Focus timer with an animated mountain climber that moves in real time
- Summit celebration — climber reaches the peak holding a gold flag
- Journey tracking across custom goal categories (work, fitness, learning, etc.)
- Weekly progress chart and day streak counter
- Eight hand-crafted visual environments with dynamic weather and animated scenes
- Two premium themes locked behind a paywall modal (Stripe-ready)
- Working email and Google authentication via Supabase
- Cloud database sync — users never lose sessions across devices
- Beautiful landing page included
- Zero dependencies to install — just two HTML files

## Environments

| Theme | Type |
|---|---|
| Snowy Peaks | Free |
| Forest Mountain | Free |
| Pleasant Meadow | Free |
| Sunny Ridge | Free |
| Rainy Pass | Free |
| Dawn Glow | Free |
| Desert Canyon | Premium |
| Night Climb | Premium |

---

## Setup (5 minutes)

### 1. Create a Supabase project
Go to [supabase.com](https://supabase.com) → New project → name it anything → wait for it to provision.

### 2. Create the database table
In your Supabase dashboard go to **SQL Editor → New query**, paste the contents of `setup.sql` and click **Run**.

### 3. Enable Row Level Security
Go to **Authentication → Policies** → find the `climbs` table → click **Create policy** → select **ALL** as the command → the SQL expression is already filled by the template → click **Save policy**.

### 4. Get your API credentials
Go to **Project Settings → API → Legacy anon, service_role API keys**.
Copy your **Project URL** and **anon public key**.

### 5. Paste credentials into app.html
Open `app.html` and find these two lines near the top of the `<script>` section:

```javascript
const SUPA_URL = 'YOUR_PROJECT_URL';
const SUPA_KEY = 'YOUR_ANON_KEY';
```

Replace the placeholder values with your own keys.

### 6. (Optional) Enable Google sign-in
In Supabase go to **Authentication → Providers → Google** and toggle it on. Follow the on-screen instructions to connect your Google Cloud credentials. Takes about 15 minutes.

### 7. (Optional) Connect Stripe
Create a Payment Link at [dashboard.stripe.com](https://dashboard.stripe.com). In `app.html` find:

```javascript
const STRIPE_LINK = 'https://buy.stripe.com/YOUR_STRIPE_LINK';
```

Replace with your actual Payment Link URL. The premium upgrade modal will now send users directly to your Stripe checkout.

### 8. Deploy
Drop both files (`index.html` and `app.html`) onto [Vercel](https://vercel.com), [Netlify](https://netlify.com), or any static host. Done.

---

## File structure

```
index.html   — public landing page
app.html     — the full focus timer application
setup.sql    — database setup script for Supabase
README.md    — this file
```

---

## Tech stack

- Vanilla HTML, CSS, JavaScript — zero build tools, zero npm
- Supabase — authentication and Postgres database
- Stripe Payment Links — no SDK required, one URL to paste

---

## Monetisation

Two themes (Desert Canyon and Night Climb) are locked behind a premium modal. The modal has a button wired to a Stripe Payment Link — just paste your own link and you're charging users. Suggested pricing: $4.99/month or $39/year.

---

## License

Single-use commercial license. You may use, modify, and deploy this code for one commercial project. You may not resell or redistribute the source code.
