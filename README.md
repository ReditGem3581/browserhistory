BrowserHistory WOD

This repository contains a simple HTML page `index.html` and associated `style.css` created to satisfy the E30/E31 practice WOD. Files:

- index.html: The page content with sections and links.
- style.css: Basic styling; Google Fonts imported for Oswald and Open Sans.
- .gitignore: Sample gitignore.
- EstimationLog.md: Place to record estimates and actual times.

How to view:
- Open `index.html` in a browser, or use Live Server/LiveReload in VSCode.

Note: This environment can't push commits to GitHub for you. After reviewing files locally, commit and push with your own Git credentials:

git add .; git commit -m "Initial WOD files"; git push origin main

Resizing images (Windows PowerShell)
If you add logo files to the `images/` folder, there is a helper script to resize them to 100x100:

1. Open PowerShell in the repo root.
2. Run:

```powershell
.\tools\resize-images.ps1
```

3. Commit and push the resized images:

```powershell
git add images/*.png
git commit -m "Add resized images"
git push
```
