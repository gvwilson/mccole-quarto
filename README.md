# McCole

Shared build files for a family of Quarto-based books. This repo holds only the
files common to all projects; each project keeps its own content and per-project
configuration.

## Using this repo

The shared files live in `mccole/`:

- `mccole/mccole.mk`: common Make targets. A project's `Makefile` uses
  `include mccole/mccole.mk` plus project-specific variables and targets.
- `mccole/mccole.yml`: common Quarto metadata. A project's `_quarto.yml`
  references it via `metadata-files` and keeps only what varies (title,
  chapters, appendices, bibliography).
- Lua filters/shortcodes, CSS, and citation styles used by every project.

Project-specific files (bibliography, `links.md`, `typos.toml`) live in each
project's `config/` directory, not here.

A minimal demonstration site exercising every feature lives in the
https://github.com/gvwilson/mcq-example repository.
