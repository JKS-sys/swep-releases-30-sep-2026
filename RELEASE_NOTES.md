# Swep 0.2.23 — 07-nov-2026

- Contacts › Fix Problems › "Duplicates by": the same mobile number only (the new default — a work, home, fax or pager number, an email or a name alone no longer makes two contacts duplicates) or number, email or name. The choice is remembered.
- Contacts: names in all capitals, all small letters or with extra spaces are tidied ("RAVI  KUMAR" → "Ravi Kumar"; Tamil, Hindi and other scripts left alone); a contact with no name gets one from its company or email; mistyped email domains (gmial.com, hotmial.com, yaho.com…) are corrected — in files, CardDAV accounts and the Contacts app.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
