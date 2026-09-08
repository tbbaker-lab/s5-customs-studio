S5 CUSTOMS STUDIO v5.2 ROBUST PATCH

Upload/replace everything in this ZIP at the ROOT of your existing GitHub Pages repository.
KEEP your existing packs/, previews/, and s5-assets-manifest.json.

Important new layout:
- app/latest.html = stable editor URL used by the launcher
- app/S5-Customs-Studio-v5.2-ROBUST.html = versioned copy
- downloads/S5-Customs-Studio-v5.2-STABLE-LAUNCHER.exe = launcher

After GitHub Pages deploys, test:
https://tbbaker-lab.github.io/s5-customs-studio/app/latest.html

Then run the new stable launcher. Future editor-only fixes can simply replace app/latest.html without rebuilding the EXE.
