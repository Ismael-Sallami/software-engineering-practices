# software-engineering-practices

![LaTeX](https://img.shields.io/badge/LaTeX-TeX%20Live-008080)
[![build](https://img.shields.io/github/actions/workflow/status/Ismael-Sallami/software-engineering-practices/ci.yml?branch=main&logo=github&label=build)](https://github.com/Ismael-Sallami/software-engineering-practices/actions/workflows/ci.yml)
![license](https://img.shields.io/badge/license-MIT-4c1)

The requirements, models and reports of a tourism management system, written by a team of
four and compiled from LaTeX sources on every push.

## Context

Coursework for **Software Engineering Fundamentals**, year 3 of the double degree in
Computer Science and Business Administration, University of Granada (2024-25). Team work
with **Julián Carrión Tovar**, **Alicia Ruiz Gómez** and **Jesús Rodríguez González**; the
third practice splits
the chapters by author.

## The problem

Specify a system before building it. The subject asks for the artefacts an analyst produces
in front of a client: actors, use cases with their descriptions, hierarchies, package
diagrams and a glossary that stops two people from meaning different things by the same
word.

The system is a tourism management platform: tour packages, clients and bookings, payments
and invoicing, and a web portal.

## The solution

| Deliverable | What it contains |
| --- | --- |
| Practice 1 | The first modelling exercises, kept in **three different layouts** of the same content, from a plain document to the `classicthesis` template |
| Practice 2, parts 1 and 2 | Actors, use case hierarchy, use case diagrams and their descriptions, the package diagram and the glossary |
| Practice 3, parts 1 and 2 | The conceptual diagram and the four subsystems, split by author |

Everything is LaTeX with `classicthesis`, `minted` for code and a shared bibliography style.
Practice 1 keeping three layouts is not an accident: they include the same chapter files, so
changing a chapter changes all three documents.

## Layout

```
docs/practice-1              the chapters, and one of the three layouts
docs/practice-1-format-b     the same content in a second layout
docs/practice-1-format-c     and in a third
docs/practice-2-part-1..2    actors, use cases, packages and glossary
docs/practice-3-part-1..2    conceptual diagram and subsystems
tools/build-docs.sh          builds the seven reports
```

## Requirements

- A TeX Live installation with `classicthesis`, `minted` and Pygments.
- `latexmk`, and `-shell-escape` enabled, which `minted` needs.

## Build and run

```bash
bash tools/build-docs.sh          # the seven reports, the same as the CI
```

Or one at a time:

```bash
cd docs/practice-2-part-1 && latexmk -pdf -shell-escape main.tex
```

The CI runs inside the `texlive/texlive` image and uploads the seven PDFs as an artifact, so
the built documents can be downloaded from any run without installing TeX.

## Results

What the build prints:

```
ok    docs/practice-1/Practica1.pdf  114 KB
ok    docs/practice-1-format-b/p.pdf  147 KB
ok    docs/practice-1-format-c/main.pdf  147 KB
ok    docs/practice-2-part-1/main.pdf  562 KB
ok    docs/practice-2-part-2/main.pdf  194 KB
ok    docs/practice-3-part-1/main.pdf  740 KB
ok    docs/practice-3-part-2/main.pdf  85 KB
every report builds
```

## What we learned

- A glossary is not filler. Half the corrections between deliverables came from two people
  using the same word with different scopes, and the glossary is where that gets settled.
- Splitting chapters by author only works if the layout is shared. The three formats of
  practice 1 include the same chapter files, so the content has one home and the format is a
  decision taken outside it.
- **Limitations:**
  - `docs/practice-3-part-1` compiles but reports a missing figure, `figures/ugrA4.pdf`, the
    cover background, which was never committed: the document comes out with its cover in
    draft. The build asserts that a PDF is produced rather than the exit code, and says why.
  - When the folders were renamed to English, two documents of practice 1 kept pointing at
    the old sibling name in their `\input` lines. Those paths were updated; nothing else in
    the sources was touched.
  - The blank Word templates that came with the assignment, repeated in four deliverables,
    are not published here: they belong to the teaching staff.
  - The reports are in Spanish, the language of the subject.

## Authors and licence

Ismael Sallami Moreno, Julián Carrión Tovar, Alicia Ruiz Gómez and Jesús Rodríguez González.
Released under the MIT licence (see `LICENSE`).
