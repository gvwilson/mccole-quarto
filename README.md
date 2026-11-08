# Mccole Quarto Template

Quarto book project (project `type: book`), configured entirely by `_quarto.yml`
at the repo root; rendered site goes to `docs/` (`output-dir: docs`).

**Chapters & appendices.** `_quarto.yml` lists `book.chapters` and
`book.appendices` in reading order. Each is a directory holding `index.qmd`
(e.g. `intro/index.qmd`); the root `index.qmd` is the unnumbered overview page.
Every content file lives exactly one directory below the root — the Lua helpers
hard-code `../` for cross-links. Chapter files are plain Markdown beginning
`# Title`, optionally with a `subtitle:` frontmatter field (rendered beneath
the title); the only other frontmatter is `bibliography/index.qmd`'s
`nocite: @*`.

**Links.** All link definitions live in `mccole/links.md` as `[key]: url`
(key = letters/digits/hyphens). In text write `[display text](@key)`; the
`mccole/links.lua` filter (`filters:` in `_quarto.yml`) resolves `@key` and
errors on an unknown key.

**Glossary.** `glossary/index.qmd` is a Markdown definition list, alphabetical
by term, each entry `<span id="key">term</span>` on one line then
`:   definition` on the next. Reference a term in text with the `g` shortcode
`{{< g key "display text" >}}` (`mccole/glossary.lua`, under `shortcodes:`),
which links to `../glossary/index.html#key`.

**Includes.** `{{< inc-noh1 "path" >}}` (`mccole/inc-noh1.lua`) includes a file,
strips its first level-1 heading, and rewrites internal `@/slug/` book links to
`../slug/index.qmd`.

**Bibliography.** BibTeX in `bibliography/references.bib` (`_quarto.yml`
`bibliography:`), rendered by `bibliography/index.qmd` (`nocite: @*` plus an
empty `#refs` div). Style: `csl: mccole/book.csl`. Cite entries in text with
`[@Key]`.

**mccole/ directory.** Template auxiliaries (not per-lesson content): Lua
filters/shortcodes `links.lua`, `glossary.lua`, `inc-noh1.lua`, `publish.lua`;
checkers `check-bib.lua`, `check-links.lua`, `check-glossary.lua`; shared
`utils.lua`; optional helpers `inc-pandoc.lua` (pandoc-side includes) and
`ex-book.lua` (an `exercise` shortcode); citation styles `book.csl`,
`slides.csl`; CSS `book.css`, `slides.css`; PDF class `krantz.cls`; `typos.toml`;
`links.md`.

**Output formats.** `_quarto.yml` `format:` — HTML (`css: mccole/book.css`,
`theme: cosmo`, `toc: true`) and PDF (`documentclass: mccole/krantz`).

**Makefile.** `make commands` lists targets. `site` = `quarto render --to html`
then `touch docs/.nojekyll`; `pdf` = `quarto render --to pdf --output-dir=pdf`;
`serve` = `quarto preview`; `publish` = `pandoc lua mccole/publish.lua docs OUT
EXTRA`; `slides` = pandoc (not Quarto) → revealjs from `slides.qmd` / `*/slides.qmd`,
via the `inc-pandoc.lua` filter; `check`
= check-bib + check-links + check-glossary + check-typos (via the mccole
checkers and `typos -c mccole/typos.toml`); `clean` removes `.quarto`, `_book`,
and `*~` files.
