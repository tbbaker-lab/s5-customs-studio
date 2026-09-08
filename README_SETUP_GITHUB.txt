S5 CUSTOMS STUDIO — GITHUB PAGES UPDATE SERVER SETUP

WHAT THIS FOLDER DOES
- Hosts your chain/jewellery asset packs.
- Hosts app-version.json for optional S5 Studio updates.
- Hosts the current S5 Studio EXE in /downloads.
- Users can choose Update Now, Remind Me Later or Skip This Version.

FIRST-TIME GITHUB SETUP
1. Create a PUBLIC GitHub repository, e.g. s5-customs-studio.
2. Upload EVERYTHING INSIDE THIS FOLDER to the root of the repo. Do not upload the outer folder itself.
3. GitHub -> repository Settings -> Pages.
4. Under Build and deployment choose: Deploy from a branch.
5. Branch: main. Folder: /(root). Save.
6. Wait for GitHub Pages to show your site URL. Example:
   https://YOURNAME.github.io/s5-customs-studio/
7. Open that URL in a browser. You should see the S5 Cloud page.

CONNECT S5 CUSTOMS STUDIO
Asset manifest URL:
https://YOURNAME.github.io/YOURREPO/s5-assets-manifest.json

App update manifest URL:
https://YOURNAME.github.io/YOURREPO/app-version.json

Inside S5:
1. Creator Hub -> Asset Server -> paste the asset manifest -> Save & Sync.
2. Creator Hub -> App Updates -> paste the app-version URL -> Save & Check.
3. Keep 'Check for S5 Studio updates on startup' enabled if you want update notifications.

UPDATES ARE OPTIONAL
S5 never installs an app update automatically. A user can click:
- Update Now
- Remind Me Later
- Skip This Version

Because this current launcher is a self-contained EXE, Update Now downloads and verifies the replacement EXE. Windows will not let the running EXE safely overwrite itself, so the user closes S5 and runs the verified downloaded EXE once.

ASSET UPDATES ARE SEPARATE
Changing a pack version in s5-assets-manifest.json makes S5 download that changed asset pack. You do not need to release a new Studio EXE just to add chains/assets.
