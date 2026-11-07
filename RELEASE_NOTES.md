# Swep 0.2.21 — 07-nov-2026

- App Store version: the sidebar, Overview, menu-bar panel, Dock and app menus show only what the sandbox allows — no Uninstall, System Repair, Purgeable Space, Optimize, Processes/Free Memory, Startup Items, Android, Cloud & Servers, Devices, Installer Receipts, Language Files, Package Caches, Pour or other computers; Clean has no system-caches option; iPhone & iPad shows only what iPhones left on this Mac; Swep Pro lists only what Pro adds there.
- App Store Connect listing written field by field (docs/APPSTORE-LISTING.md).
- Log boxes: links, durations (1.2s, 350ms) and version numbers get their own colours beside paths, sizes, numbers, quotes and brackets; a live sparkline of how fast lines arrive with a lines-per-second rate, and a starting sound with its own drawn scene (logStart, pulse).
- Results: space freed lands with a new burst scene and a rising chime (freed, burst); the result number ticks when its count-up lands (tally, tally).
- Empty states drawn in several colours; buttons give a little when pressed (respects Animations Off and reduced motion).
- scripts/nopink.mjs: fails on any colour in the front end with a hue of 280–350°.
- update.sh: the Developer ID certificate, the notarisation login and the App Store Connect key come from the vault too (shared APPLE_DEVID_P12, APPLE_* and APPLE_API_KEY_P8) — a new Mac signs and notarises as the same developer with nothing set up by hand.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
