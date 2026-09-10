# OEM diagram transcription

`OEM-Docs/` preserves source material and its human-reviewed transcription. A PDF, image, or scan remains the authoritative record; the companion Markdown makes its useful circuit information searchable, linkable, and reviewable.

## File pairing

Keep the source and its transcription in the same manufacturer directory. Use a specific, descriptive companion name such as `2011-Nissan-Armada-VK56DE-ECM-pinout.md`, rather than renaming or replacing the original file. A source can support more than one Markdown document when it covers distinct systems.

Begin every transcription with a `Transcribed from` sentence that links to the exact local source and records the source's diagram title, page or sheet numbers, and relevant scope. State any disagreement between the source's stated vehicle/engine and information inferred elsewhere.

The established `*-ECM-pinout.md` documents contain:

- an accurate vehicle, engine, module, connector, and pin-count scope;
- one table for each ECM connector, with `Pin`, `Wire`, `Function (as printed)`, and `Connects to` columns;
- source wire-colour abbreviations and connector naming explained near the tables;
- power, relay, fuse, and ground routing when the source shows it; and
- only source-supported conclusions. Mark unreadable or unresolved information instead of filling gaps from a similar vehicle.

List a pin only when the diagram wires it or explicitly identifies it. If the diagram does not show every terminal, say that unlisted terminals are not connected **in this diagram**; do not claim they are physically unused.

## OCR workflow

OCR is a drafting aid, not the transcription. Dense wiring drawings have weak reading order and can confuse wire colours, terminal numbers, and crossed wires. Do not commit a raw `.txt` OCR result beside the source unless it is itself an intentional reference artifact.

Install the local tools once:

```sh
bin/install-schematic-transcription-tools.sh
```

For a source PDF, use a temporary directory outside the repository:

```sh
mkdir -p /tmp/example/rendered
pdfinfo "OEM-Docs/Nissan/example.pdf"
pdftotext -layout "OEM-Docs/Nissan/example.pdf" /tmp/example/source.txt
pdftoppm -png -r 300 "OEM-Docs/Nissan/example.pdf" /tmp/example/rendered/sheet
tesseract /tmp/example/rendered/sheet-1.png /tmp/example/sheet-1 --psm 11
```

First inspect the PDF text layer. If it only contains a web-page header or no diagram text, render the page and OCR the image. Use the rendered page to visually trace every terminal and check each transcription row. Keep crop images and OCR output under `/tmp` while working. Then write the reviewed Markdown companion and validate internal links before committing.

`poppler-utils` supplies `pdfinfo`, `pdftotext`, and `pdftoppm`; `tesseract-ocr` supplies `tesseract`. The installer supports Debian/Ubuntu, Fedora/RHEL, and Homebrew systems.
