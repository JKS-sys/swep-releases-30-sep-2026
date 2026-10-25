# Swep 0.2.14 — 26-oct-2026

- Pour → Move to Pour: what is already in Pour is found with the same test the move uses (names, short names, the token Pour resolves), so a finished move is no longer offered again — when everything is in, the page says so and offers only to remove Homebrew. Homebrew's four questions and Pour's list are asked at once.
- Pour opens at once with the last look (kept on disk) while it looks again.
- Releases: Apple silicon Macs only — no Intel, Windows, Linux or FreeBSD builds (one build, much faster).
- No Workers KV: activation codes live in D1, and codes made on the ipconfig dashboard are checked through the accounts API (`/codes/check`).
- Simulators: every virtual machine and emulator — Parallels, VMware Fusion, UTM, VirtualBox, VirtualBuddy, Tart, Lima, Colima, Android emulators (each AVD), Genymotion, CrossOver bottles, Xcode preview and test simulators, Docker Desktop's disk, OrbStack, Wine, Vagrant and minikube images (never ticked).
- AI models: the runners and makers on yourunai.com's model list (MLX, mlx-audio, transcribe.cpp, llama.cpp, vLLM, SGLang, Kokoro, ACE-Step, ModelScope, Diffusers, ComfyUI Desktop…) and Hugging Face downloads named by model family.
- Duplicates: "Any size" finds identical files however small.
- More: Terminal session files, Quick Look/icon caches, Spotify and new-Teams caches; browser helper registrations and other leftovers; ARA, Steinberg, Bitwig, FL Studio, Logic, Ableton and Native Instruments plug-in leftovers; FreeFileSync/Dropbox sync files, Chrome scratch files, old eMule parts.
- Log boxes: a self-drawing picture for each state (gears while working, a tick, a warning sign, a cross), a sound and a shake when a problem line arrives, popping badges, sounds for wrap, fold and copy.
- Every sidebar entry in its page's own colour; app signatures and installed apps warmed in the background at start-up.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
