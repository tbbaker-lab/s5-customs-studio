S5 CUSTOMS STUDIO — FULL CHUNKED ROBUST REPO
============================================

WHY THIS VERSION EXISTS
GitHub Release downloads redirect to a different download host. A normal browser can download them by navigation, but the browser-based S5 editor cannot reliably fetch/read the final cross-origin file. This version avoids that completely.

THE FIX
- Core 50 is split into 4 chunks.
- Pack A is split into 5 chunks.
- Every chunk is 8 MiB or smaller, so GitHub's normal website uploader accepts it.
- S5 downloads chunks from the SAME GitHub Pages origin, joins the original ZIP back together, verifies the full ZIP SHA-256, caches it, then loads all assets.
- Total assets remain 74.

UPLOAD
1. Extract this ZIP.
2. Put everything in the root of your s5-customs-studio repository.
3. Upload the pack chunk folders exactly as supplied:
   packs/core50/
   packs/pack-a/
4. Wait for GitHub Pages to redeploy.
5. Open https://tbbaker-lab.github.io/s5-customs-studio/verify.html
6. Run checks. Every chunk should show PASS / HTTP 200.
7. Close and reopen the permanent S5 launcher.

IMPORTANT
The old GitHub Release pack links are no longer needed by S5. You can leave the release there; it will simply not be used.
Keep app/latest.html and s5-assets-manifest.json from THIS package together.
