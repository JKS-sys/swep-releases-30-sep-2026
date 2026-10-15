# Swep 0.2.12 — 15-oct-2026

- Fixed: the release stopped silently right after "5 build(s), 2 at a time". The build board looked up a log that was still empty, and under the script's strict mode an empty lookup ended everything without a word. Every lookup on the board now tolerates an empty log, and if anything ever stops update.sh unexpectedly it now prints the line and command where it stopped.
- Fixed: turning the Dock or menu-bar icon off and on could crash Swep or leave a dead icon behind. The menu-bar icon is now removed by its id and made only when none exists; the change runs on the main thread, any panic in there is caught and written to the log, and coming back to the Dock puts the chosen app icon and the window back.
- New: the menu-bar icon's left click opens a quick panel — free space as a ring, what Swep has freed, and twelve one-click actions (Clean Now, AI Clean, Free Memory, Leftovers, Large Files, Duplicates, Uninstall, Pour, Plug-ins, Repair, Status, Settings). Double click opens the window; Esc or clicking elsewhere hides the panel.
- New: a much bigger right-click menu on the menu-bar icon and the Dock icon — free space at the top, Open, Quick Panel, Clean Now, AI Clean, Free Memory, then Clean, Apps and Plug-ins, System, Devices, Appearance (theme, sounds, animations), Swep Lives In (switch between Dock and menu bar right there) and Window and Help (show, hide, compact, large, centre, shortcuts, updates, about, website, star on GitHub, log folder), Settings, Pro, Account and the Owner Panel.
- New Finder right-click actions: Find Small Junk Here, Remove Unused Languages (on an app), Find Leftovers of This App, and Delete Immediately (skips the Trash, asks first) — twelve in all.
- Right-click inside Swep: on a row — Open, Quick Look, Get Info, Open a Terminal here, Copy (path, name, folder, size, the row); on a group — copy the group, or remove the whole group; anywhere — Layout, Appearance, Window, Swep Lives In and Settings.
- Log boxes everywhere: crash reports, search results and command output in dialogs are shown in the same log box (coloured by kind, Copy and Expand).
- Leftovers: home dot-folders that apps leave behind (~/.vscode, ~/.cursor, ~/.windsurf, ~/.zoomus, ~/.android, ~/.orbstack, ~/.lmstudio, ~/.atom, ~/.zed, ~/.arduino15 and more) once the app is gone, plus folders named after removed apps in ~/.config, ~/.local/share and Sentry's crash cache (the desktop's own folders are never touched).
- Plug-ins: editor extensions (VS Code, VS Code Insiders, VSCodium, Cursor, Windsurf, Sublime Text) with older copies of updated extensions marked, keyboard layouts and alert sounds.
- AI Clean: Xcode test results (.xcresult) older than two weeks, crash reports saved as files (.crash, .ips) and TypeScript build records.
- Language Files: spelling dictionaries inside apps (dictionaries, hunspell; .dic, .aff, .bdic).
- Five new sounds with their own pictures: the Dock and menu bar switching, Quick Look, Get Info, a background service found among the leftovers, and editor extensions removed.
- More colour: sidebar headings, every settings row, dialog titles, key lists and menu headings each take their own hue (no pink).

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
