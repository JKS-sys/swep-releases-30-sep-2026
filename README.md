<p align="center">
  <img src="assets/icon-light.png" width="128" height="128" alt="Swep icon, light">
  &nbsp;&nbsp;
  <img src="assets/icon-dark.png" width="128" height="128" alt="Swep icon, dark">
</p>

<h1 align="center">Swep</h1>

<p align="center">Keep your computer clean — caches, app leftovers, empty folders, large files and more, with nothing removed until you say so.</p>

<p align="center">
  <a href="https://ipconfig.co.network">Website</a> ·
  <a href="https://github.com/JKS-sys/swep-releases-30-sep-2026/releases">All releases</a> ·
  <a href="https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/latest">Latest release</a>
</p>

## Download Swep 0.2.1 (04-oct-2026)

| System | Download |
|---|---|
| macOS, Apple Silicon | [Swep_0.2.1_aarch64.dmg](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.1/Swep_0.2.1_aarch64.dmg) |
| macOS, Intel | [Swep_0.2.1_x64.dmg](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.1/Swep_0.2.1_x64.dmg) |
| Windows | [Swep_0.2.1_x64-setup.exe](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.1/Swep_0.2.1_x64-setup.exe) |
| Linux (AppImage) | [Swep_0.2.1_amd64.AppImage](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.1/Swep_0.2.1_amd64.AppImage) |
| Linux (Debian/Ubuntu) | [Swep_0.2.1_amd64.deb](https://github.com/JKS-sys/swep-releases-30-sep-2026/releases/download/v0.2.1/Swep_0.2.1_amd64.deb) |

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
- **Package Caches** and **Startup Items** (Pro), **Status** and **History**.
- Click, Shift-click, drag across rows, or hold Space with the arrow keys to select; Trash or delete for good.
- Light and dark themes from the icon's palette, a Dock icon that follows them, gentle sounds and animations (both can be turned off).
- Closing the window quits completely. Updates are signed and checked before they install.

## Pro

₹20 a month or ₹220 a year, or an activation code. Pro unlocks choosing exactly what Clean removes, system caches,
removing many apps at once, the whole disk and external drives, package caches and startup items.

---

Made by Jagadeesh Kumar S — [ipconfig.co.network](https://ipconfig.co.network) · [NewsCraft Studio](https://www.youtube.com/@JKS-sys)
