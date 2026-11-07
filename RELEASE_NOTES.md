# Swep 0.2.22 — 07-nov-2026

- Contacts › merge duplicates keeps everything: the card shows the fullest name and every other name becomes a nickname (search still finds it); every number, email, address, website and profile stays — also the same number written another way or under another label — only exact copies are left out; the note starts "Merged from N cards on … Also known as: …" and lists each card with everything it had (a second company or birthday is kept there); a merged note is never shortened. The Contacts app gets the same (addresses, websites, profiles, nicknames, note), not only numbers and emails.
- Contacts: an empty number is no longer listed, checked or merged.
- Contacts › Missing country code: each number gets its own country — a number written with 00, a code written without +, the country of another number on the card, the card's address, its email's country domain — and the home country only when nothing else says otherwise.
- Contacts: the account and the tab (Contacts or Fix Problems) come back after another page and after a restart.
- Choose the AI Swep asks (Settings and AI Models): Automatic, Swep AI, or any Ollama or LM Studio model on this Mac; a chosen model that is not running says so instead of quietly asking another.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
