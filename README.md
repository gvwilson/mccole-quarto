# McCole

Shared build files for a family of Quarto-based books, plus a
self-testing example site at the repo root.

## Using this repo

The shared files live in `mccole/`:

- `mccole/mccole.mk`: common Make targets. A project's `Makefile` uses
  `include mccole/mccole.mk` plus project-specific variables and targets.
- `mccole/mccole.yml`: common Quarto metadata. A project's `_quarto.yml`
  references it via `metadata-files` and keeps only what varies (title,
  chapters, appendices, bibliography).
- Lua filters/shortcodes, CSS, and citation styles used by every project.

A project adds this repo as a git remote (`git remote add mcq <url>`) and
refreshes `mccole/` with `make update-mccole`.

Project-specific files (bibliography, `links.md`, `typos.toml`) live in
each project's `config/` directory, not here.

The site content at the repo root (`index.qmd` and the chapter
directories) is a minimal demonstration site that exercises every feature
of the shared base; build it with `make site`.
