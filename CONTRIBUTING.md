# Contributing

Contributions are very welcome;
please contact us [by email][email] or by filing an issue in [our repository][repo].
All contributors must abide by our Code of Conduct.

## Contributors

*[Greg Wilson][wilson-greg]* is a programmer, author, and educator based in Toronto.
He was the co-founder and first Executive Director of Software Carpentry
and received ACM SIGSOFT's Influential Educator Award in 2020.

## Setup and Operation

-   Install [Quarto][quarto] to build the site.
-   Run `make` on its own to see a list of common commands.

## Structure

-   Lessons are in `slug` directories (e.g., `intro/`, `health/`)
    -   Each lesson has an `index.qmd` file containing its content
-   `_quarto.yml` configures the book and chapter order
-   `bibliography/references.bib` holds the bibliography in BibTeX format
    -   Cite entries with `[@Key]` (e.g., `[@Aurora2019]`)
-   `glossary/index.qmd` holds the glossary as a definition list
    -   Reference terms with `{{< g key "display text" >}}`

## FAQ

Do you need any help?
:   Yes—please see the issues in [our repository][repo].

What sort of feedback would be useful?
:   Everything is welcome,
    from pointing out mistakes in the code to suggestions for better explanations.

Can I add a new section?
:   Absolutely, but please [reach out][email] before doing so.

Why is this material free to read?
:   Because if we all give a little, we all get a lot.

[email]: mailto:gvwilson@third-bit.com
[quarto]: https://quarto.org/
[repo]: https://github.com/gvwilson/mrsp
[wilson-greg]: https://third-bit.com/
