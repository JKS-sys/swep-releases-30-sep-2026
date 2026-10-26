# Swep 0.2.15 — 26-oct-2026

- Computers with Swep: work sent from another computer only runs with that computer's Pro when it comes from the owner's Mac; otherwise it runs with Pro only if the computer doing the work has its own Pro.
- Computers over SSH: the same rule — sp on the remote computer gets Pro from the owner's Mac only, otherwise its own licence.
- Pour: leaving the tab no longer stops or freezes the scan; coming back joins it or shows its answer, and is never stuck on "Asking every package manager…".
- Every page: a page you return to that was waiting on nothing any more is drawn fresh instead of showing a stuck wait.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
