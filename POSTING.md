# How to update the site

The site is Jekyll on GitHub Pages. Whatever is on `master` at
github.com/nosimpler/nosimpler.github.io is live at https://nosimpler.github.io/
a minute or two after you push. Blog posts are written in Quarto, rendered to
Markdown, reviewed locally, then committed.

## One-time setup

- **Docker** is the only requirement for previewing (Docker Desktop must be running).
- **Quarto** is needed for writing posts: `brew install --cask quarto`.

## Preview the site locally

```sh
scripts/serve
```

Open http://localhost:4000. The page reloads when you save a file; stop it with
Ctrl-C. The first run takes a few minutes to install gems, and later runs are quick.
`scripts/serve build` builds once into `_site/` without serving.

`_config.yml` changes need a restart. Nothing in `_drafts/` or `_src/` is
built, either locally or on the live site. Only files in `_posts/` are published.

## Write a post

1. **Start the source file.** Copy the template, and use the date you plan to publish:

   ```sh
   cp _src/_template.qmd _src/2026-11-01-my-slug.qmd
   ```

   The file name becomes the URL: `/<category>/my-slug/`.

2. **Copy figures in** from the project repo. They go in a folder named after the post:

   ```sh
   mkdir -p assets/posts/2026-11-01-my-slug
   cp ~/src/ch8/works/confusion/figures/fig1.png assets/posts/2026-11-01-my-slug/
   ```

   Reference them with root-relative paths:
   `![Caption](/assets/posts/2026-11-01-my-slug/fig1.png){#fig-one}`.

3. **Write.** Front-matter fields:
   - `math: true` loads MathJax. Write math as `$x$` and `$$ ... $$`.
   - `bibliography:` points to a `.bib` file, and you cite with `[@key]`. Quarto
     resolves citations at render time, so the rendered post has plain text and a
     reference list.
   - Cross-references: label with `{#fig-name}` and refer with `@fig-name`.

4. **Render** to Jekyll Markdown:

   ```sh
   scripts/render-post _src/2026-11-01-my-slug.qmd
   ```

   This writes `_posts/2026-11-01-my-slug.md`. Never edit that file by hand.
   Edit the `.qmd` and render again.

5. **Review** with `scripts/serve`, and check the rendered post, figures, math
   and citations.

6. **Publish.** Commit the source, the rendered post and the figures together:

   ```sh
   git add _src/2026-11-01-my-slug.qmd _posts/2026-11-01-my-slug.md assets/posts/2026-11-01-my-slug
   git commit -m "Post: my slug"
   git push
   ```

## Edit a page

The pages are in `_pages/` (about, cv, projects, publications, contact, ...), and
the homepage is `index.md`. Edit the file, preview it, then commit and push. The
top menu is defined in `_data/navigation.yml`.

## Unpublish something

Delete the file (or move a post back to `_drafts/`), commit and push.

## Analytics

The site counts visits with [GoatCounter](https://www.goatcounter.com): no
cookies and no personal data. Visits are counted only on the live site, never in
the local preview. Your dashboard is at `https://<code>.goatcounter.com`.

GoatCounter can't tell you *who* visited. It shows pages, times, referrers and
rough location. To see whether a particular application was followed up, give
each one its own link:

    https://nosimpler.github.io/?ref=acme-research-scientist

The `ref` value appears in the Referrers list. Use a different one for each
application (CV header, cover letter, LinkedIn message).

## If something goes wrong

- **The live site didn't update:** check the Actions tab on GitHub for a failed
  "pages build and deployment" run. The error usually names the file.
- **Docker errors on `scripts/serve`:** make sure Docker Desktop is running.
- **A broken image:** use paths that start with `/assets/...`.
