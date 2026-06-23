# NapGuard Validation Landing Page

This repository contains a validation landing page and visual concept assets for **NapGuard**, a nap-specific smart sleep mask concept for people who accidentally oversleep short naps.

## Files

- `index.html` - polished validation landing page with product positioning, sensor layout, FAQ, and static Formspree-ready waitlist forms.
- `napguard-social-card.svg` - static Open Graph / Twitter preview artwork used by the homepage metadata.
- `napguard-concept.html` - earlier product concept page with an interactive Three.js model.
- `outputs/napguard-model.scad` - simple OpenSCAD model for CAD-style geometry exploration.
- `vercel.json` - minimal Vercel static-site settings.

## View the landing page

Open `index.html` directly in a browser. The landing page is static and posts waitlist submissions to Formspree after you paste your public endpoint into `FORMSPREE_ENDPOINT` near the bottom of `index.html`. Successful submissions are backed up in browser localStorage under `napguardWaitlistBackup`; failed attempts are stored under `napguardWaitlistFailed`.

## Vercel deployment settings

Use these settings in Vercel:

- Framework Preset: Other
- Root Directory: `.`
- Build Command: empty / none
- Install Command: empty / none
- Output Directory: `.`

This project does not use Next.js, Vite, Node, serverless functions, rewrites, localhost proxying, or a build step. Vercel should serve `index.html` directly from the repository root.

## View the OpenSCAD prototype

Open `outputs/napguard-model.scad` in OpenSCAD, then press **F5** for preview or **F6** for render.

## Concept note

This is a visual concept only. It does not make medical claims and does not claim perfect sleep-stage detection. Sensor placement, comfort, signal quality, wake behavior, safety, and privacy would all require validation before any real product.
