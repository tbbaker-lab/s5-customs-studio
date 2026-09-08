S5 CUSTOMS STUDIO — FULL ROBUST GITHUB PAGES REPO
===================================================

THIS IS A CLEAN, COMPLETE REPOSITORY.
It already contains BOTH downloadable asset packs, all previews, the hosted Studio,
the permanent launcher download, and the manifests.

EXPECTED ASSETS
- S5 Jewellery Core 50: 50 assets
- Chain Templates Pack A: 24 usable assets (2–25; source pack did not include 1.obj)
- Total: 74 downloadable cloud assets

IMPORTANT
Use GitHub Desktop to upload this repo. The two ZIP packs are larger than GitHub's
normal browser upload limit, even though they are below GitHub's 100 MB Git file limit.

CLEAN INSTALL
1. Clone tbbaker-lab/s5-customs-studio using GitHub Desktop.
2. Open the local repository folder.
3. Delete the old repository contents EXCEPT the hidden .git folder.
4. Copy EVERYTHING from this folder into the local repository folder.
5. In GitHub Desktop, commit all changes.
6. Push origin.
7. GitHub -> Settings -> Pages -> Deploy from branch -> main -> /(root).
8. Wait for Pages to deploy.

TEST THESE URLS
https://tbbaker-lab.github.io/s5-customs-studio/
https://tbbaker-lab.github.io/s5-customs-studio/verify.html
https://tbbaker-lab.github.io/s5-customs-studio/s5-assets-manifest.json
https://tbbaker-lab.github.io/s5-customs-studio/app/latest.html

The verify.html page should report PASS for both pack ZIPs and the hosted app.

WHAT WAS HARDENED
- The hosted Studio derives its manifest URLs from the GitHub Pages repo it is running from.
- The current repo manifest is tried BEFORE any old saved manifest URL.
- Both packs are autoInstall=true.
- Both pack ZIPs are SHA-256 checked before being cached.
- Pack cache uses browser Cache Storage with IndexedDB fallback.
- App version and manifest version both remain 5.2.1, so there is no fake update prompt.
- The permanent launcher only has to be installed once; normal Studio updates use app/latest.html.
