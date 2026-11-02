# fede-ortega.github.io

Personal website of Federico Ortega Riba, served at <https://fede-ortega.github.io/> (English) and <https://fede-ortega.github.io/es/> (Spanish).

## Editing

- English content: `content/index.md`
- Spanish content: `content/index.es.md`
- Shared page layout (header, language toggle, meta tags): `content/template.html`
- Résumé: drop the PDF at `files/Federico_OrtegaRiba_Resume.pdf`

## Building

Requires [Pandoc](https://pandoc.org/).

```sh
make        # builds index.html and es/index.html
make serve  # builds and serves at http://127.0.0.1:8000
```

The generated `index.html` and `es/index.html` are committed, since GitHub Pages serves the repository root as-is.

## Credits

Based on [The Monospace Web](https://github.com/owickstrom/the-monospace-web) by Oskar Wickström (MIT, see `LICENSE.md`). Uses the [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono) font, self-hosted under the SIL Open Font License 1.1 (see `fonts/OFL.txt`).
