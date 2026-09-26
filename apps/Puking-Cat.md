# Puking Cat Privacy Policy

## Introduction
At Puking Cat, we prioritize the privacy and security of our players. Puking Cat is a
casual physics game by Happy Code Studio. This Privacy Policy explains what information
the app collects, how we use it, and the choices you have. The short version: the game
does not require a player-created login. When you complete a level, Firebase gives the
app an anonymous identifier so that Community Cats invites can be verified. If you
choose to nominate a cat, we also receive the photo you select, a cat name and a public
credit nickname. We never ask for your email or precise location. It is free to play
and supported by ads, which you can remove with an optional subscription. Your game
progress stays on your device.

## Information We Collect

- **Gameplay usage statistics (Firebase Analytics)**: anonymous events about how the
  game is played — for example which level was completed, how long an attempt took, and
  how many stars were earned. These events contain no personal information: they are
  limited to predefined names and numbers. Firebase assigns a random app-instance
  identifier to distinguish installs; it does not identify you personally.
- **Crash reports (Firebase Crashlytics)**: if the game crashes, a technical report
  (device model, operating system version, and the state of the app at the time of the
  crash) is sent to us so we can fix the problem.
- **Remote configuration (Firebase Remote Config)**: the app periodically fetches
  configuration values (for example, the minimum supported app version). This is a
  download of settings, not an upload of your data, though standard Firebase
  installation identifiers apply.
- **Advertising data (Google AdMob)**: when the free version shows an ad, our ad
  partner receives data needed to select, deliver, measure, and report on that ad.
  Depending on your consent choices and your device settings, this can include your
  device's advertising identifier, approximate (non-precise) location derived from your
  IP address, device and app information, and whether an ad was shown, viewed, or
  clicked. See **Advertising and Your Choices** below for how to control this.
- **Purchase and subscription data (RevenueCat)**: if you buy the Remove Ads
  subscription, our subscription provider records the purchase and whether it is still
  active, together with a randomly generated anonymous identifier for your install and
  standard purchase details from the store (product, purchase and expiry dates,
  country, and price). **We never receive your payment card, bank, or billing details** —
  the app store handles payment and never shares those with us.
- **Ad performance measurement**: we record non-personal events about ads (loaded,
  shown, opened, and estimated revenue) so we can understand how the free version is
  performing. To connect these measurements with the anonymous analytics above, the
  random Firebase app-instance identifier and the random RevenueCat identifier for your
  install are linked to each other. Neither identifies you personally.
- **Push notifications (OneSignal)**: if you opt in to receive notifications (such as
  daily reminders or announcements about new levels), our notification service provider
  (OneSignal) processes an anonymous device token/subscription identifier, device model,
  operating system version, and notification interaction events (such as whether a notification
  was received or opened). Notifications are strictly opt-in, never collect personal information,
  and you can turn them off at any time in your device's system settings.

Firebase and AdMob are Google services. Google's processing of this data is described
in the [Google Privacy Policy](https://policies.google.com/privacy),
the [Firebase privacy documentation](https://firebase.google.com/support/privacy), and
[How Google uses information from sites or apps that use our services](https://policies.google.com/technologies/partner-sites).
RevenueCat's processing is described in the
[RevenueCat Privacy Policy](https://www.revenuecat.com/privacy).
OneSignal's processing is described in the
[OneSignal Privacy Policy](https://onesignal.com/privacy_policy).

## Community Cats

**For every player.** The first time you complete a level, Firebase Authentication
gives the app an anonymous user ID. It is a random identifier and it does not contain
your name, email or device advertising ID. Against that ID we store the level you first
completed, the number of shots it took and the time, together with a personal invite
code. This lets us verify that an invited friend really played before either of you
receives a nomination, and it prevents duplicate claims. We do not use this record for
advertising and we do not share it with ad networks. It happens whether or not you ever
open Community Cats.

**Only if you use invites.** We also store the invites you accept or send, referral
credits and nomination balances.

**Only if you nominate a cat.** If you nominate
a cat, we receive the photo you select, cat name, public credit nickname, submission and
review status, and a dated record of your ownership/guidelines confirmation. Firebase
Firestore and Cloud Storage hold the private records and photo.

During review, we send the photo and cat name to Google's Gemini image-generation
service to make cartoon candidates. A person reviews the art before publication. The
curator supports Google Cloud Vertex AI and the Gemini API; their processing terms are
linked below. Your original is not published. Approved cartoon art and the cat and
credit names can appear in the public Community Cats gallery in the game.

We keep your original only during review, then delete it on approval or rejection.
The curator deletes our intake copy and its local original; this does not promise that
Google's processing logs are erased at that same instant. See Google's
[Cloud generative-AI data governance](https://cloud.google.com/vertex-ai/generative-ai/docs/data-governance)
and [Gemini API terms](https://ai.google.dev/gemini-api/terms) for provider processing.
The original-photo deletion does not delete the separate consent, referral or review
records, or the approved artwork. Uninstalling the app does not remove those records.

You can request removal of published artwork or help with Community Cats data by
emailing [info@happycode.studio](mailto:info@happycode.studio) with the cat name,
credit name and approximate submission date. Do not submit a photo if you do not want
it processed to create cartoon game art. Choosing not to submit does not prevent play.

## Advertising and Your Choices
The free version of the app shows ads supplied by Google AdMob.

**Whether those ads are personalized is your decision, and only yours.** The app does
not force an answer either way: it passes your choice to Google and Google serves
accordingly. If you allow personalized advertising, ads may be selected using an
advertising profile that Google associates with your device, including activity in
other apps and on other websites. If you decline, or if you are never asked, you still
see ads — they are simply chosen from the context of the request rather than from a
profile about you.

- **Rewarded ads are always your choice.** You are offered one in exchange for something
  in the game — an extra puke after a failed attempt, or doubling what you earned on a
  win. Declining costs you nothing and never blocks progress.
- **Occasional full-screen ads** may appear between levels. They are never shown after a
  failed attempt.
- **App Tracking Transparency (iOS)**: the app shows Apple's ATT prompt and asks for
  permission to use your device's advertising identifier (IDFA) for advertising.
  **Choosing "Ask App Not to Track" is a complete answer** — the identifier is not used,
  ads become non-personalized, and nothing else about the game changes. You can change
  your answer at any time in **iOS Settings → Privacy & Security → Tracking**.
- **Consent (EEA, UK, Switzerland and other applicable regions)**: before ads are
  shown, the app displays a Google-provided consent form built on the IAB Transparency
  and Consent Framework, listing the purposes and the advertising partners involved.
  Your answers there decide whether the ads you see are personalized, non-personalized,
  or limited. You can change them at any time through the **Privacy options** entry in
  the app's Settings screen.
- **Android**: Google may use your device's advertising ID both to personalize ads,
  where you have allowed it, and for purposes that apply either way — limiting how
  often you see the same ad, measuring it, and detecting fraud. You can reset or delete
  that ID, or opt out of ad personalization generally, in **Settings → Google → Ads**.
- **Attribution**: on iOS, Apple's SKAdNetwork may report to advertisers, in aggregate
  and without identifying you, that an app install followed an ad.
- **Removing ads**: an active Remove Ads subscription stops ads from being shown, and
  with them the advertising data described above.

Ads require some data whichever choice you make — the ad request itself, coarse
location derived from your IP address, and device information — in order to serve and
measure the ad and to limit repetition.

### Tracking
Because personalized advertising can involve linking your device's advertising
identifier to activity in other companies' apps and websites, the App Store lists this
app as one that may use data to track you. That description applies **only when you
have permitted it** through the prompts above. Community Cats separately processes
an anonymous ID and, only if you nominate a cat, the names and photo you submit, as
described above. We do not request your
email address, precise location or contacts for that feature, and we do not sell your data.

## Purchases

The game offers an optional **Remove Ads** subscription, available monthly or
annually. It removes display advertising; you keep access to the optional
rewarded ads if you want the in-game bonuses they give.

Subscriptions renew automatically until cancelled, and are managed through your
Apple or Google account — you can cancel there at any time. Prices are shown in
the app before you confirm.

## What We Do NOT Collect
- **No player-created login** — no email or password is needed to play. Community Cats
  uses an anonymous Firebase ID, described above, to protect invite and nomination
  records.
- **No general photo-library access for Community Cats** — we receive the photo you
  select for a nomination, not your whole library. The form asks for a cat name and
  a public credit nickname; use a nickname, not your real name, and do not enter
  contact details. It does not request microphone,
  camera, contacts or precise-location access.
- **No payment details** — purchases are processed entirely by the App Store or Google
  Play; we never see or store your card or billing information.
- **No sale of personal information** — we do not sell your data, and we do not share
  it with anyone other than the service providers named in this policy, which process
  it on our behalf.

## Where Your Game Progress Lives
Your level progress, scores, stars, and settings are stored **only on your device**.
Community Cats separately records the first level you completed, against the anonymous
ID described above, to verify invites; this is not a backup of your full progress. Deleting the app removes local
progress but does not automatically delete server-side Community Cats records. (Your Remove Ads
subscription is tied to your app store account rather than your device, so it can be
restored on a new device with the "Restore purchases" button.)

## How We Use Information
- **Improving the game**: aggregated, anonymous gameplay statistics tell us which levels
  are too hard or too easy so we can tune them.
- **Fixing problems**: crash reports tell us when and why the game breaks.
- **Showing and measuring ads**: to deliver ads in the free version, personalize them
  where you have permitted it, limit repetition, and understand how the free version
  performs.
- **Providing your subscription**: to check whether Remove Ads is active on your
  install and to turn ads off accordingly.
- **Delivering notifications**: to send optional gameplay reminders and level updates
  if you have opted in to receive push notifications.

## Data Retention and Deletion
Community Cats original-photo handling and separate server records are described above.
The following paragraph describes the other SDK data, not a Community Cats deletion schedule.

Analytics, advertising, crash, and notification data are retained by Google, RevenueCat,
and OneSignal according to their standard retention periods and are automatically deleted
afterwards. Because this data is anonymous, it generally cannot be linked back to you
on request; if you have any concern about data connected to your device, contact us at
[info@happycode.studio](mailto:info@happycode.studio) and we will do our best to help.
Your on-device progress can be deleted at any time by uninstalling the app. Subscription
records held by the app stores are governed by Apple's and Google's own policies.

## Your Rights
Depending on where you live, you may have rights to access, correct, delete, or object
to the processing of your personal data, and to withdraw consent for personalized ads
at any time (see **Advertising and Your Choices**). To help locate a Community Cats
submission, include the submitted cat name, credit name and approximate submission date;
we may need further information to verify a request. Write to
[info@happycode.studio](mailto:info@happycode.studio).

## Children
Puking Cat is a lighthearted game suitable for a general audience. It is not directed
at children, and we do not knowingly collect personal information from children. The
app is not intended for children under the age required for consent in your country,
and ads shown in the app are not directed at children. If you believe a child has
provided us with personal information, contact us and we will delete it.

## Data Security
We implement appropriate security measures to protect the limited data we handle. All
communication between the app and the services named above uses encrypted connections
(HTTPS).

## Changes to This Privacy Policy
We may update this Privacy Policy from time to time. The current version will always be
posted on this page with its effective date. Significant changes will be highlighted in
the app's release notes, and the updated policy will be visible on this page before the
version it describes ships.

## Contact Us
If you have any questions about this Privacy Policy, please contact us at
[info@happycode.studio](mailto:info@happycode.studio).

_Last Updated: September 26, 2026_

_Effective Date: September 26, 2026_
