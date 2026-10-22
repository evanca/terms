#!/usr/bin/env bash
# Create a new app's public pages from _templates/.
#
#   _scripts/new-app.sh <slug> "<App Name>"      e.g. _scripts/new-app.sh ms-dash "Ms. Dash"
#
# Makes <slug>/ at the top of this repository with privacy.md, terms.md, support.md and
# update-policy.json, published at https://happycode.studio/terms/<slug>/privacy, /terms,
# /support and /update-policy.json once merged. Fills in {{APP_NAME}} and {{SLUG}} only;
# every other placeholder stays visible and is listed at the end. Nothing is committed.
set -euo pipefail

usage() { sed -n '4p' "$0" | sed 's/^#  *//' >&2; exit 2; }
refuse() { echo "REFUSED: $*" >&2; exit 1; }

[ "$#" -eq 2 ] || usage
slug="$1"
name="$2"

root="$(cd "$(dirname "$0")/.." && pwd)"
templates="$root/_templates"
files="privacy.md terms.md support.md update-policy.json"
base_url="https://happycode.studio/terms"

# Lowercase letters, digits and single hyphens; starts and ends with a letter or digit.
[[ "$slug" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]] ||
  refuse "slug '$slug' must use only a-z, 0-9 and single hyphens, and start and end with a letter or digit, e.g. ms-dash."

case "$name" in
  "" | *[[:cntrl:]]* | *"{{"* | *"}}"*) refuse "the app name must be one line of text without {{ or }}." ;;
esac

# Names the site already uses or that Jekyll would not publish.
#   apps: the legacy flat pages; readme, index, 404: the site's own pages;
#   assets: the theme's stylesheets; vendor, node_modules: never built by Jekyll.
for reserved in apps readme index 404 assets vendor node_modules; do
  [ "$slug" != "$reserved" ] || refuse "'$slug' is reserved; choose another slug."
done

[ ! -e "$root/$slug" ] || refuse "$slug/ already exists."

# Any other top-level file or folder, ignoring case and file extension, so that
# 'readme' never sits beside README.md or 'pixel-art-sliding-puzzle' beside its old page.
for entry in "$root"/*; do
  [ -e "$entry" ] || continue
  existing="$(basename "$entry" | tr '[:upper:]' '[:lower:]')"
  if [ "$slug" = "$existing" ] || [ "$slug" = "${existing%.*}" ]; then
    refuse "'$slug' collides with the existing '$(basename "$entry")'."
  fi
done

for file in $files; do
  [ -f "$templates/$file" ] || refuse "missing template _templates/$file."
done

# mkdir without -p fails if the folder appeared meanwhile, so nothing is ever overwritten.
mkdir "$root/$slug" 2>/dev/null || refuse "$slug/ already exists."

for file in $files; do
  # Literal replacement: names such as "Tom & Jerry" or "A/B" are copied as typed.
  NEW_APP_NAME="$name" NEW_APP_SLUG="$slug" awk '
    function swap(text, from, to,    out, at) {
      out = ""
      while ((at = index(text, from)) > 0) {
        out = out substr(text, 1, at - 1) to
        text = substr(text, at + length(from))
      }
      return out text
    }
    { print swap(swap($0, "{{APP_NAME}}", ENVIRON["NEW_APP_NAME"]), "{{SLUG}}", ENVIRON["NEW_APP_SLUG"]) }
  ' "$templates/$file" > "$root/$slug/$file"
done

echo "Created $slug/ for $name: $files"
echo
echo "Published at these addresses once the pull request is merged (merging publishes):"
for file in $files; do
  echo "  $base_url/$slug/${file%.md}"
done
echo
echo "Placeholders still to fill (see _templates/CHECKLIST.md):"
for file in $files; do
  left="$(grep -o '{{[A-Z0-9_]*}}' "$root/$slug/$file" | sort -u | tr '\n' ' ' || true)"
  [ -z "$left" ] || echo "  $slug/$file: $left"
done
echo
echo "Also fill each <!-- BEGIN ... --> section and delete the ones that don't apply."
echo "GitHub Pages publishes a leftover {{...}} in a page as empty text. Before merging,"
echo "this must print nothing:  grep -rn '{{' $slug/"
