#!/usr/bin/env bash
# Install the local PDF rendering and OCR tools used by OEM-Docs transcriptions.
set -euo pipefail

required_tools=(pdfinfo pdftotext pdftoppm tesseract)
missing_tool=false
for tool in "${required_tools[@]}"; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        missing_tool=true
        break
    fi
done

if [ "$missing_tool" = false ]; then
    echo "Schematic transcription tools are already available."
    exit 0
fi

if command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y poppler-utils tesseract-ocr
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y poppler-utils tesseract
elif command -v brew >/dev/null 2>&1; then
    brew install poppler tesseract
else
    echo "Unsupported package manager. Install Poppler utilities and Tesseract OCR manually." >&2
    exit 1
fi

for tool in "${required_tools[@]}"; do
    command -v "$tool" >/dev/null 2>&1 || {
        echo "Installation completed but $tool is not available on PATH." >&2
        exit 1
    }
done

echo "Schematic transcription tools are available."
