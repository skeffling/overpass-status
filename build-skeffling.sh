#!/bin/bash
# Build script for Skeffling version with Umami analytics

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/skeffling"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Umami tracking code
UMAMI_SCRIPT='    <script defer src="https://stats.skeffling.net/script.js" data-website-id="96bcefad-c4a8-438b-bc08-aa8871de3c83"></script>'

# Copy index.html and inject Umami script before </head>
sed "s|</head>|$UMAMI_SCRIPT\n</head>|" "$SCRIPT_DIR/index.html" > "$OUTPUT_DIR/index.html"

# Copy icon if it exists
if [ -f "$SCRIPT_DIR/icon.svg" ]; then
    cp "$SCRIPT_DIR/icon.svg" "$OUTPUT_DIR/"
fi

echo "Built Skeffling version to: $OUTPUT_DIR"
echo "Files:"
ls -la "$OUTPUT_DIR"
