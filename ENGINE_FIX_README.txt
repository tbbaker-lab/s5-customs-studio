S5 CUSTOMS STUDIO v5.1.1 ENGINE FIX

This patch fixes the Windows EXE startup error where the loading screen said it could not load the 3D engine even though GitHub Pages was online.

Cause: v5.1.0 loaded Three.js from esm.sh. The embedded Windows browser environment can block/fail that module host.

Fix: v5.1.1 uses an import map + jsDelivr for Three.js/addons and JSZip.

UPLOAD: replace the matching files in your existing GitHub Pages repo with the contents of this folder, especially app-version.json, index.html, app/, and downloads/. Your packs/ and previews/ are included unchanged.
