# NapGuard Concept Prototype

This repository contains a visual product concept and basic 3D prototype for **NapGuard**, a nap-specific smart sleep mask concept.

## Files

- `index.html` - root entry point for static hosting.
- `napguard-concept.html` - product mockup page with product description, labeled component diagram, interactive Three.js model, how-it-works section, and exploded layer concept.
- `outputs/napguard-model.scad` - simple OpenSCAD model for CAD-style geometry exploration.
- `vercel.json` - minimal Vercel static-site settings.

## View the web prototype

Option 1: open `napguard-concept.html` directly in a browser.

Option 2: serve this folder locally:

```powershell
cd C:\Users\shukl\Documents\Codex\2026-06-16\i-want-you-to-create-a
python -m http.server 8000
```

Then open:

```text
http://localhost:8000/
```

The web prototype imports Three.js from a CDN, so the interactive model needs internet access the first time it loads.

## View the OpenSCAD prototype

Open `outputs/napguard-model.scad` in OpenSCAD, then press **F5** for preview or **F6** for render.

## Concept note

This is a visual concept only. It does not make medical claims and does not claim perfect sleep-stage detection. Sensor placement, comfort, signal quality, wake behavior, safety, and privacy would all require validation before any real product.
