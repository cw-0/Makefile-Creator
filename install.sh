#!/usr/bin/env bash

set -e

echo "Installing makeme..."

chmod +x makeme
sudo cp makeme /usr/local/bin/makeme

TEMPLATE_PATH="$HOME/.makeme_template"

if [ ! -f "$TEMPLATE_PATH" ]; then
    cp .makeme_template "$TEMPLATE_PATH"
    echo "Template copied to $TEMPLATE_PATH"
fi

echo "✅ makeme installed!"
