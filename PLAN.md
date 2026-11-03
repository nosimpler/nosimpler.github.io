# Plan: the website

_Drafted 2026-10-23 by the human and Claude Code, split out of the confusion project's planning.
Status: decided 2026-10-28; rewrite in progress._

The site is modernized and made professional before anything new is posted. The first posts
waiting on it are results from `~/src/ch8/works/confusion`, published as blog posts first and
linked into a paper later.

## Where it stands

- Jekyll on GitHub Pages, with the Minimal Mistakes remote theme (see `SITE_NOTES.md`).
- The one published post is from 2022 (`2022-01-14-Recombination1.md`).
- Work in progress, uncommitted:
  - pages for about, CV, consulting, contact, projects, publications, blog and AI policy;
  - edits to `_config.yml` and the navigation;
  - drafts in `_drafts/`.

## Authorship

- Posts are written by the author. An LLM doesn't draft, rewrite or restructure them.
- The exceptions are marked inserts (citations and cross-references, made through monk, with
  the author confirming each one) and figure captions, after the author approves the exact wording.
- Site machinery (configuration, layout, styling, build) may be LLM-written.
- Code doesn't live in posts. Posts embed figures and outputs produced in the project repos.

## Decisions (2026-10-28)

1. **Quarto → Markdown → Jekyll.** Posts are written as `_src/*.qmd` and rendered locally with
   `scripts/render-post`, and the rendered `_posts/*.md` is committed after review. GitHub Pages
   keeps building Jekyll. The workflow is in `POSTING.md`.
2. **Professional:**
   - Stay on nosimpler.github.io with no custom domain for now.
   - Comments are off and the Jekyll feed stays.
   - Analytics use GoatCounter, with per-application `?ref=` links.
   - The site title is "Robert Law, PhD" and the blog is "One Loose Canon".
   - The 2022 post stays. Its figures are in `assets/images/`, and the deleted `_files/`
     PNGs were unused knitr output (recoverable from commit 8f5a7a7).
3. **Figures:** copied into `assets/posts/<post>/` at publish time.
4. **Citations:** still open (one shared bib or one per project).
5. **AI policy:** the canonical text is "Notes for humans: Commitments on AI", published verbatim at
   `/blog/ai-policy/`.
6. **Personal facts** (CV, publications, projects, contact) are sourced from `../ai-job-search`
   (`documents/config/candidate_profile.md`). About, bio and projects are drafted by Claude for
   the author's review.
7. **Consulting:** to be discussed separately. The page exists but is out of the nav.
8. **Projects:** parked (`published: false`) until there is portfolio material such as figures, public code or posts. The thesis and connectomics summaries moved to About.
