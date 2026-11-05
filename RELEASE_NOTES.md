# Swep 0.2.17 — 05-nov-2026

- iPhone & iPad: "Install iPhone Tools" works — Swep now looks in Pour's folders (/opt/pour/bin) for the tools it just installed; before, the page stayed on "Install iPhone Tools" after a good install.
- Every tool Pour or Homebrew installed is found when Swep is opened from the Dock (their folders are added to its PATH at start), and Developer cleaning no longer takes a tool Pour installed for uninstalled.
- update.sh: keys come from the ipconfig dashboard's vault — a new Mac needs nothing typed: the owner's GitHub sign-in (gh) opens it, or it shows a code, you approve it in the owner panel → Vault → Macs, and its own read-only vault token stays in the login keychain. The licence signing key, the update signing key, the "Swep Code Signing" certificate and the owner-device key are kept in the vault the first time and restored from it on another Mac (so licences, updates and Full Disk Access carry over). Without the vault it refuses to make new signing keys by accident (SWEP_NEW_KEYS=1 to do it on purpose).
- Free plan: cleaning and leftover removal free up to 1 GB a day without Pro; what does not fit waits for tomorrow, with a note. Swep Pro has no limit.
- Pour › Everything Installed: lists every package — dependencies (marked, never picked as unused), fonts, installers and command-line-only casks, and anything in the Cellar or Caskroom the manager's own list left out.
- Pour › Move to Pour: the last look is also kept between launches (6 hours) and drawn at once.
- Worker: records moved from Cloudflare D1 to the ipconfig dashboard's database (swep-03-nov-2026) and key-value namespace (swep-kv-03-nov-2026); update.sh copies what is left and then deletes the old D1 database and Workers KV namespace.
- More leftovers (kernel and system extensions), more plug-in folders (Soundtoys, Slate Digital, Softube, Antares, Celemony, Toontrack, u-he, Xfer, Output, Eventide, Valhalla, Audio Damage, sonible, Neural DSP, Line 6), more small files (editor swap files, core dumps).
- Log boxes: a drawn marker per line kind — ring for done, diamond for a step, triangle for a warning, bar for a problem.

- Mac App Store build (Apple silicon): `bash update.sh --appstore` builds, signs and uploads "Swep" with bundle id network.co.ipconfig.swep.store; `--appstore --doctor` names any missing APPLE_STORE_* key, identity or tool (never a value). Never part of the normal release.
- App Store version: Swep Pro through StoreKit 2 (swep.pro.monthly, swep.pro.yearly) with Subscribe, Restore Purchases and Manage Subscription; each purchase is also recorded on the accounts server.
- App Store version: no website checkout, activation codes, self-updater, Pour page, account page or download links; it runs in the App Sandbox, and what the sandbox forbids (admin tasks, system folders, removing other apps, other computers, package managers, login items) says so in one line.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
