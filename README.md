# App Privacy Policy & Terms of Service

Pixel Art Sliding Puzzle [Privacy Policy](../terms/apps/Pixel-Art-Sliding-Puzzle)
</br>
Montessori Xylophone [Privacy Policy](../terms/apps/Montessori-Xylophone)
</br>
Nursula [Privacy Policy](../apps/Nursula)

## Apps with their own folder

Ms. Dash [Privacy Policy](https://happycode.studio/terms/ms-dash/privacy) · [Terms of Use](https://happycode.studio/terms/ms-dash/terms) · [Support](https://happycode.studio/terms/ms-dash/support)

## Adding a new app

Each new app gets one folder at the top of this repository, named with a lowercase slug such as `ms-dash`. It holds the same four files:

| File | Address |
|---|---|
| `<slug>/privacy.md` | `https://happycode.studio/terms/<slug>/privacy` |
| `<slug>/terms.md` | `https://happycode.studio/terms/<slug>/terms` |
| `<slug>/support.md` | `https://happycode.studio/terms/<slug>/support` |
| `<slug>/update-policy.json` | `https://happycode.studio/terms/<slug>/update-policy.json` |

1. Run `_scripts/new-app.sh <slug> "<App Name>"`. It copies `_templates/`, fills in the app's name and slug, and lists the placeholders left to fill.
2. Fill in every placeholder and marked section from the release build, following `_templates/CHECKLIST.md`. A fact nobody has confirmed stays as a visible bracketed note.
3. Check that `grep -rn '[{][{]' <slug>/` prints nothing. GitHub Pages publishes a leftover placeholder in double braces as empty text.
4. Open a pull request. Merging it publishes the pages.

The apps listed first keep their existing pages in `apps/` and at the top level, so their addresses never change. Folders whose names start with `_`, such as `_templates/` and `_scripts/`, are not published.
