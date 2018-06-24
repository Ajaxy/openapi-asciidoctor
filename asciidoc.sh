#!/usr/bin/env bash
set -e

source=$1
dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# Generate docs in AsciiDoc format > `tmp/index.adoc`.
java -jar ${dir}/swagger2markup-cli-1.3.1.jar convert \
    -i ${source} \
    -f ${dir}/tmp/index \
    -c ${dir}/config.properties \
    >$(tty)

# Convert AsciiDoc to HTML (output to stdout).
asciidoctor -a toc=left -a toclevels=3 -a sectanchors ${dir}/tmp/index.adoc --out-file=-

# Convert AsciiDoc to PDF (output to stdout).
#asciidoctor-pdf -a toc=left -a toclevels=3 -a sectanchors spec/index.adoc --out-file=-
