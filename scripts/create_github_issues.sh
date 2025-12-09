#!/usr/bin/env bash
# Create GitHub issues from markdown files in `.github/ISSUES/` using `gh` CLI.

set -euo pipefail

ISSUES_DIR=".github/ISSUES"

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: GitHub CLI 'gh' is not installed. Install from https://cli.github.com/"
  exit 1
fi

for f in "$ISSUES_DIR"/*.md; do
  # skip README
  [[ "$(basename "$f")" == "README.md" ]] && continue

  # Read title from first line starting with 'Title:'
  title_line=$(grep -m1 "^Title:" "$f" || true)
  if [[ -z "$title_line" ]]; then
    echo "Skipping $f: no Title: line"
    continue
  fi
  title=${title_line#Title: }

  # Body: everything except the Title line
  body=$(sed '1,/^Title:/d' "$f")

  echo "Creating issue: $title"
  gh issue create --title "$title" --body "$body" || echo "Failed to create $title"
done

echo "Done. Review created issues on GitHub."
