# Facts each page needs

`_scripts/new-app.sh` fills in only `{{APP_NAME}}` and `{{SLUG}}`. Everything
else below comes from the release build and the owner's records, never from
memory or another app's pages.

- A fact nobody has confirmed stays in the page as a visible `[bracketed note]`.
  The page is not ready to publish while one is left.
- No `{{` or `{%` may be left in a page. GitHub Pages runs Liquid over every
  Markdown page. A leftover `{{...}}` placeholder is published as empty text
  and quietly disappears. A stray `{%` or an unclosed `{{` fails the whole site
  build, which stops every page from updating. Before merging, this must print
  nothing: `grep -rnE '[{]([{]|%)' <slug>/`

## Placeholders

| Placeholder | Files | What goes there |
|---|---|---|
| `{{APP_NAME}}` | all pages | The app's name as the stores show it. Filled by the script. |
| `{{SLUG}}` | terms, support | The folder name. Filled by the script. |
| `{{PUBLISHER}}` | privacy, terms | The publisher's trading name. |
| `{{PUBLISHER_LEGAL}}` | privacy | The controller: legal entity form, registered name and address. |
| `{{CONTACT_EMAIL}}` | all pages | The support and privacy contact. |
| `{{WEBSITE}}` | privacy | The publisher's website, as a link. |
| `{{TERRITORIES}}` | privacy | The countries or regions where the app is offered. |
| `{{JURISDICTION}}` | terms | The governing law, for example "the Republic of Latvia". |
| `{{RETENTION}}` | privacy | How long each kind of data is kept, or the rule that decides it, per service. |
| `{{AUDIENCE}}` | privacy | The intended audience, the store age ratings, and what happens if a child's data is found. |
| `{{EFFECTIVE_DATE}}` | privacy, terms | The date the approved text takes effect. Set it only on approval. |
| `{{MIN_VERSION}}` | update-policy.json | The first release's version, such as `1.0.0+1`. |
| `{{APPLE_APP_ID}}` | update-policy.json | The numeric Apple ID from App Store Connect → App Information. |
| `{{ANDROID_APPLICATION_ID}}` | update-policy.json | The Android application ID, such as `studio.happycode.<app>`. |

## Marked sections

Each sits between `<!-- BEGIN ... -->` and `<!-- END ... -->` comments. Replace
the placeholder inside with real content. The comments don't show on the page.

- **LOCAL DATA** (privacy): `{{LOCAL_DATA_LIST}}`, one bullet per thing saved
  on the device.
- **SDK LIST** (privacy): `{{SDK_LIST}}`, one bullet per SDK or service in the
  release build: what it receives, why, and a link to its privacy policy.
- **DATA LIST** (privacy): `{{DATA_LIST}}`, one bullet per kind of data that
  leaves the device: who receives it, why, whether it is linked to the player,
  and how to turn it off.
- **PURCHASES** (privacy, terms, support): `{{PURCHASES}}`, the plans the build
  sells and who processes them. Delete these sections if the app sells nothing.
- **FAQ** (support): `{{FAQ}}`, short answers to what players ask, such as
  saved progress, free content and known limits.

## Facts to collect

- [ ] **Every SDK and data flow in the release build.** Read `pubspec.yaml` and
  its lock file, the native dependencies (`Podfile.lock`, Gradle) and every
  network call in the code. Include the update check, which downloads
  `update-policy.json` from this site at launch.
- [ ] **Purchases.** The products and plans, trials and where they apply, the
  purchase provider (for example RevenueCat), restore and manage paths.
- [ ] **Analytics.** The provider, every event, every property the app sends,
  every property the SDK adds on its own, identifiers, and the opt-out.
- [ ] **Advertising and tracking.** Whether there is any, and the consent and
  ATT flows.
- [ ] **Contact.** The email address that answers support and privacy requests.
- [ ] **Publisher.** The trading name, legal entity form, address and website.
- [ ] **Jurisdiction and territories.** The governing law, and where the app is
  offered.
- [ ] **Retention.** For each service: how long data is kept and how deletion
  requests are handled.
- [ ] **Audience.** The intended audience and the store age ratings.
- [ ] **Effective date.** Set when the owner approves the text.
- [ ] **Minimum app version.** The version `update-policy.json` starts from.
- [ ] **Store forms match.** Apple's App Privacy answers and Google Play's Data
  safety form say the same as the privacy page.

## update-policy.json

The app's forced-update check reads this file at launch: per platform, an
optional `minimum_version`, `recommended_version` and `store_url`. A missing or
broken file never blocks play. If the app documents a different format, follow
the app's documentation.

- Start non-blocking: set both versions to the first release, so no released
  build is below them.
- If the Apple ID is not known yet, delete the whole iOS `store_url` line;
  iOS then shows no prompt until it is added. Never publish a placeholder.
- Raise `minimum_version` only after the new build is live for everyone in that
  store.
- Check that it is still valid JSON: `python3 -m json.tool <slug>/update-policy.json`.
  The app ignores the whole file if any part of it is malformed.

## After merging

Merging publishes the pages. Then:

- [ ] All four URLs return `200` directly, with no redirect:
  `.../<slug>/privacy`, `/terms`, `/support` and `/update-policy.json`. The
  update check should read the file directly.
- [ ] The privacy page names every SDK in the release build.
