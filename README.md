# Rice to Meet You

This folder contains a static HTML site for the `Rice to Meet You` project.
The main page is now `index.html`, ready to be deployed to any static hosting service.

## Deploying with GitHub Pages

1. Create a GitHub repository and push this folder.
2. On GitHub, go to `Settings` > `Pages`.
3. Set the source to `Deploy from a branch` and choose the branch `main` (or `master`) with the folder `/ (root)`.
4. Save.
5. GitHub will publish the site at:
   - `https://<your-username>.github.io/<repo-name>/`

## Deploying with Netlify

1. Sign in to https://app.netlify.com/.
2. Click `New site from Git` and connect your GitHub repository.
3. Choose the repo and deploy.
4. Netlify will provide a public URL like `https://<random-name>.netlify.app`.

## Local preview

If you only need a local address for testing, use one of these commands:

- With Python 3:
  ```powershell
  python -m http.server 8000
  ```
  Then open `http://localhost:8000/`.

- With Node.js:
  ```powershell
  npx serve .
  ```

## Notes

- Keep the file named `index.html` at the repository root.
- If you need a custom domain, configure it in GitHub Pages or Netlify settings.
