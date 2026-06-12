# GoldenPath Solutions — Website

Modern, professional marketing site for **GoldenPath Solutions**, a warehouse
staffing & recruitment company. Built with **Astro + Tailwind CSS v4**, featuring
a dark premium aesthetic and progressive scroll animations, based on the official
GoldenPath brand guidelines.

## Brand

| Token | Hex | Role |
|-------|-----|------|
| Midnight Navy | `#0f172a` | Base background |
| Royal Workforce Blue | `#0017a0` | Depth / glow |
| Champagne Gold | `#c8a96b` | Primary accent |
| Golden Path Amber | `#a87900` | Accent gradient |
| Pure White | `#ffffff` | Contrast |

Headings use **Plus Jakarta Sans**, body uses **Inter** (web-safe stand-ins for the
brand's TT Commons Pro). Tone: professional, human, aspirational.

## Tech stack

- [Astro](https://astro.build) 6 (static output)
- [Tailwind CSS](https://tailwindcss.com) v4 (via `@tailwindcss/vite`)
- Vanilla JS for scroll reveal, scroll-progress bar, and animated stat counters
  (no heavy animation libraries)

## Project structure

```
src/
  layouts/Layout.astro      # HTML shell, fonts, global scroll scripts
  components/
    Nav.astro               # Sticky nav + mobile menu
    Hero.astro              # Headline, CTAs, visual placeholder
    Marquee.astro           # "Trusted by" logo marquee
    Services.astro          # 3 service cards
    Stats.astro             # Animated stat counters
    Process.astro           # 4-step "how it works"
    Roles.astro             # Contract types + For Employers / For Workers
    Contact.astro           # CTA + contact form
    Footer.astro
  pages/index.astro         # Page assembly
  styles/global.css         # Design tokens + utilities
```

## Commands

| Command | Action |
|---------|--------|
| `npm install` | Install dependencies |
| `npm run dev` | Start dev server at `localhost:4321` |
| `npm run build` | Build production site to `./dist/` |
| `npm run preview` | Preview the production build locally |

## Replacing placeholders

The site ships with tasteful placeholders so it looks finished out of the box.
Swap these for real brand assets:

- **Logo** — edit `src/components/Logo.astro` (replace the inline SVG mark/wordmark
  with the official logo file).
- **Hero photo** — replace the "Warehouse photo" placeholder block in
  `src/components/Hero.astro` with `<img src="/img/warehouse.jpg" … />` (put images
  in `public/img/`).
- **Partner logos** — update the `partners` array in `src/components/Marquee.astro`.
- **Copy & contact details** — email/phone in `src/components/Contact.astro`.
- **Contact form** — currently a front-end demo; wire it to a form backend
  (Formspree, Resend, an API route, etc.) for real submissions.
