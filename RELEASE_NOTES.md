# Swep 0.2.18 — 05-nov-2026

- Permissions kept across updates: releases are signed only with Developer ID Application (permissions follow the team, on every Mac and certificate renewal) or the one "Swep Code Signing" certificate — never "Apple Development", which the keychain listed in no fixed order, so updates alternated signatures and macOS asked for Full Disk Access and folders again. update.sh now compares each build's signature with the last release's (kept in the vault) and stops on a change; the move to Developer ID is the one planned exception (macOS asks once more, then never).
- iPhone & iPad: Xcode device support per iOS/watchOS/tvOS/visionOS version, device logs and synced crash reports, app copies iTunes kept, Apple Configurator downloads and the sync caches of macOS's device agents; "Clear Crash Reports on It" takes the crash reports off a plugged-in device.
- More caches: Swift Package Manager/CocoaPods/Carthage, Bun and Deno, Music/TV/Podcasts/Books, Maps/Weather/News, Discord, Cursor and Windsurf.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
