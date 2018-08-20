### About
Bash script for generating **HTML** and **PDF** documentation from **OpenAPI** format using [swagger2markup](https://github.com/Swagger2Markup/swagger2markup-cli) and [Asciidoctor](https://asciidoctor.org/).

Docs are generated with few formats transformations: [OpenAPI](https://openapis.org/) => [AsciiDoc](https://asciidoctor.org/docs/what-is-asciidoc/) => HTML and PDF

### Example
Generated documentation: https://ajaxy.github.io/tinyspec

### Requirements
- Java
- RubyGems:
```bash
gem install asciidoctor
gem install asciidoctor-pdf --pre
```

### Usage with [tinyspec](https://github.com/Ajaxy/tinyspec):
```bash
tinyspec -j && \
    ../openapi-asciidoctor/asciidoc.sh openapi.json > docs/index.html && \
    rm openapi.json && \
    open docs/index.html
```
