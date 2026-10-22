#!/usr/bin/env bash
set -e

DEST_DIR="$HOME/.claude/commands"
mkdir -p "$DEST_DIR"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/.claude/commands/sgrodax.md" "$DEST_DIR/sgrodax.md"

echo "✅ Skill /sgrodax installata con successo in $DEST_DIR/sgrodax.md"
echo "Ora puoi usare '/sgrodax <idea>' in qualsiasi istanza di Claude Code."
