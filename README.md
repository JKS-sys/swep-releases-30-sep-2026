<p align="center">
  <img src="assets/icon-light.png" width="128" height="128" alt="Swep icon, light">
  &nbsp;&nbsp;
  <img src="assets/icon-dark.png" width="128" height="128" alt="Swep icon, dark">
</p>

<h1 align="center">Swep</h1>

<p align="center">Keep your computer clean — caches, app leftovers, empty folders, large files and more, with nothing removed until you say so.</p>

<p align="center">
  <a href="https://ipconfig.co.network/swep">Website</a> ·
  <a href="https://github.com/JKS-sys/swep-releases-30-sep-2026/releases">All releases</a> ·
  <a href="https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/latest">Latest release</a>
</p>

## Install

**Homebrew** — one command each, no separate tap step:

```bash
brew install --cask jks-sys/swep/swep   # the Swep app
brew install jks-sys/swep/sp            # the sp command
```

**From the website:** [ipconfig.co.network/swep](https://ipconfig.co.network/swep)

**From GitHub:** the downloads below, or [all releases](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases).

## Download Swep 0.2.3 (04-oct-2026)

| System | Download |
|---|---|
| macOS, Apple Silicon | [Swep_0.2.3_aarch64.dmg](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.3/Swep_0.2.3_aarch64.dmg) |
| macOS, Intel | [Swep_0.2.3_x64.dmg](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.3/Swep_0.2.3_x64.dmg) |
| Windows | [Swep_0.2.3_x64-setup.exe](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.3/Swep_0.2.3_x64-setup.exe) |
| Linux (AppImage) | [Swep_0.2.3_amd64.AppImage](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.3/Swep_0.2.3_amd64.AppImage) |
| Linux (Debian/Ubuntu) | [Swep_0.2.3_amd64.deb](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.3/Swep_0.2.3_amd64.deb) |

The command-line tool `sp` is in the same release for macOS.

## What's new

- Rebuilt on Tauri: the app is a few megabytes instead of a few hundred, starts instantly and uses far less memory.
- Deep Clean: system and user caches, logs, browser and developer-tool leftovers, and data left by removed apps — with a preview, and Pro can untick anything before cleaning.
- Uninstall shows every leftover file with its size before anything is removed, and Pro removes many apps at once.
- New: Empty Folders — finds folders with nothing real inside (only .DS_Store-type litter at most) and removes them safely. Also in the CLI as `sp empty`.
- New: Large Files, Installer Files, Build Artifacts, Package Caches, Startup Items, Purgeable Space, Status and History.
- Analyze measures folders on every core at once, remembers what it measured, and works on the startup disk and external drives.
- Removing a file macOS protects is reported as kept, not as an error.
- Closing the window quits Swep completely.
- Light and dark themes, and a Dock icon that follows them.
- Gentle sounds and animations — a sweep and a spark when a clean finishes. Both can be turned off in Settings.
- Purgeable Space shows how much macOS is holding back and reclaims it in one click, for everyone. Also `sp purgeable`.
- The `sp` command does the full job on its own: `sp clean`, `sp uninstall "App" --apply`, `sp optimize`, `sp purge`, `sp empty` — previews first, `--apply` to act.
- Every build bundles the newest cleaning runtime, checked before it is used.
- Updates: Swep asks GitHub, the GitHub mirror and ipconfig.co.network at once, shows what each one has, and installs the newest signed version with a live progress bar. The version number rolls over like an odometer.
- `sp update` updates the command line the same way, signature checked.
- Each release is uploaded to R2 and the previous installers there are deleted once the new one is live.
- If the site's routes are missing, licences and updates carry on through the Worker's own address.
- A launch animation, a radar sweep while scanning, rows that fly away when removed, calm empty states, a theme switch that ripples out from the click, and many more sounds — with Full, Subtle and Off levels.
- Fixed: `sp disk --path ~` and piping `sp` into another command no longer crash; problems are written to ~/.swep/crash.log.
- Selecting rows plays rising notes, a drag-select leaves a trail of stars, and every finished item in a deep clean ticks while a live counter shows what has been cleaned so far.
- Status has animated gauges and a heartbeat line; new activation codes unscramble into place; page titles cascade in.
- Clean now removes developer leftovers too: Rust's cargo caches, unpacked sources, git checkouts and rustup downloads (and old toolchains, or all of ~/.cargo and ~/.rustup once Rust is uninstalled); folders and broken commands left by tools you removed; shell startup lines that point at removed tools; Homebrew packages nothing needs and its old versions; and npm, Yarn, pnpm, Bun, pip, uv, Go, CocoaPods, SwiftPM, Gradle and Maven caches. Also on its own page and as `sp dev`.
- Protected Folders: anything inside them is never cleaned, from any page or command (`sp protect`).
- Touch ID for sudo can be turned on and off in Settings (`sp touchid`).
- Status shows the apps using the most memory and live network speed.
- Remove Swep in Settings takes the app, its settings and the sp command away cleanly.
- `sp completion zsh|bash|fish` adds tab completion.
- Full Disk Access now survives updates: every build is signed with the same certificate.
- Install with Homebrew in one command: `brew install --cask jks-sys/swep/swep` (and `brew install jks-sys/swep/sp`).
- Duplicates: finds files that are identical byte for byte (size, samples, then a full SHA-256) and keeps the oldest copy unless you choose otherwise. Also `sp dupes`.
- Contacts Fixer: removes invalid numbers and repeats, merges duplicate contacts, deletes empty ones and can add country codes — in the Contacts app with iCloud, Google and Exchange accounts (changes sync), or in any .vcf file. Backed up first. Also `sp contacts`.
- Free Up Memory on the Clean page and in the menu (`sp ram`).
- Empty Folders, Large Files and Duplicates work everywhere: external disks, network shares, iCloud Drive, OneDrive, Google Drive, Dropbox and Box folders. Online-only cloud files are never counted as taking space.
- Cloud & Servers: large files and empty folders on Amazon S3, FTP/SFTP, WebDAV, OneDrive, Google Drive and more, through rclone (`sp cloud`).
- Cleaning also covers Tauri and Rust caches and build folders, temporary files, and the Trash and ._ litter on external disks.
- Package Caches measures where each tool really keeps its cache, so the sizes are complete.
- Things that macOS keeps or an app recreates no longer reappear in Empty Folders and command-line leftovers; anything that needs a password gets one retry with it (`sp hidden` lists them).
- Select All in every list; Analyze no longer takes over another page you switch to while it measures.
- Works in any window size: the page list scrolls while Swep Pro, Settings and About stay pinned at the bottom; Status and Activation Codes text stays readable and inside its boxes; words like "Temporary files" no longer lose their space.
- Activation codes can only be made from Swep on the owner's Mac.
- A subscription paid while Swep was closed is picked up at the next launch.
- `sp` gained interactive pickers like the bundled engine's: `sp uninstall`, `sp large`, `sp empty`, `sp dupes`, `sp cloud`.
- Monthly (₹20) and yearly (₹220) Pro plans, plus activation codes.
- Updates come from GitHub first, then the ipconfig.co.network mirror.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`

## Features

- **Clean** — system and user caches, logs, browser and developer-tool leftovers, and data left by removed apps, with a full preview first. Pro can untick anything and include system caches.
- **Uninstall** — every leftover of an app (caches, preferences, containers, launch agents, logs) listed with its size before anything goes. Pro removes many apps at once.
- **Leftovers** — data from apps you already deleted, grouped by the app it came from.
- **Empty Folders** — folders with nothing real inside, found on every core at once and removed safely (only if still empty).
- **Analyze** — what takes the space on the startup disk, your home folder or an external drive; folders measured in parallel and remembered.
- **Large Files**, **Installer Files** and **Build Artifacts** (node_modules, Rust target, Python venvs, Pods…).
- **Purgeable Space** — see how much macOS holds back as purgeable and reclaim it in one click.
- **Optimize** — DNS, Spotlight, QuickLook, LaunchServices, fonts, Dock and Finder refresh, plus a health and security check.
- **Developer Leftovers** — Rust caches and old toolchains (or all of ~/.cargo and ~/.rustup once Rust is gone), folders and broken commands left by removed tools, shell lines that point at them, Homebrew packages nothing needs, and npm/Yarn/pnpm/Bun/pip/Go/CocoaPods/SwiftPM/Gradle/Maven caches. Part of every Clean.
- **Protected Folders** — never cleaned, from any page or command.
- **Duplicates** — identical files by full SHA-256; the oldest copy is kept. **Contacts Fixer** — invalid numbers, repeats, duplicate contacts, empty contacts, country codes; in the Contacts app (iCloud, Google, Exchange sync) or a .vcf file.
- **Everywhere** — Empty Folders, Large Files and Duplicates on external disks, network shares and cloud folders; **Cloud & Servers** for S3, FTP/SFTP, OneDrive, Google Drive via rclone.
- **Free Up Memory**, temporary files, Tauri and Rust caches, external-disk litter.
- **Touch ID for sudo**, **Remove Swep**, tab completion for `sp`.
- **Package Caches** and **Startup Items** (Pro), **Status** (gauges, top apps, network) and **History**.
- Click, Shift-click, drag across rows, or hold Space with the arrow keys to select; Trash or delete for good.
- Light and dark themes from the icon's palette, a Dock icon that follows them, gentle sounds and animations (both can be turned off).
- Closing the window quits completely. Updates are signed and checked before they install.

## Pro

₹20 a month or ₹220 a year, or an activation code. Pro unlocks choosing exactly what Clean removes, system caches,
removing many apps at once, the whole disk and external drives, package caches and startup items.

---

Made by Jagadeesh Kumar S — [ipconfig.co.network/swep](https://ipconfig.co.network/swep) · [NewsCraft Studio](https://www.youtube.com/@JKS-sys)
