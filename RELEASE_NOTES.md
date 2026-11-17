# Swep 0.2.24 — 17-nov-2026

- Duplicate Apps: finds apps that are on the Mac more than once (same bundle id) in Applications, ~/Applications, Downloads, Desktop, Documents and /Users/Shared. The copy in Applications always stays (a plain name before "App 2" or "App copy", then the newest version); with none in Applications, the newest copy stays. The rest go to the Trash.
- Shared Folder: lists everything in /Users/Shared except its own name file. Folders that belong to an app (Adobe, Steam, iLok, sound libraries and others) are marked and not picked; everything else is picked and goes to the Trash. /Users/Shared itself is never removed.
- Accounts: follows the current ipconfig accounts API. The account page can show recent activity, export everything the server holds to Downloads, and change the email (a code goes to the new address). Swep introduces itself to the dashboard once per version (POST /apps/register), and crash reports made while offline wait and go together in one batch with the next one that gets through.
- Fixed: Swep asked for the administrator password at every update on some Macs. When an update had once needed the password, the new app was left belonging to the administrator, so every later update needed it again. The app is now handed back to you after that one time, and later updates go through without asking. Only the download flag is cleared from the new app, not every attribute.
- Log boxes: a minimap strip under the title bar shows the whole log at a glance, each cell in the colour of the worst line it covers (click one to jump there); every filter chip has its own drawn icon; four new sounds, each with its own picture: a flag for the first warning, a bug for the first problem, stairs for a new step and a stack for every hundredth line.
- More colour in logs (no pink): dates and times, variables, hashes and command flags each have their own colour.
- Nothing overlaps in a small window: the segmented switches (Plug-ins, Pour, Settings) wrap onto more lines instead of cutting their words off. Every page is now checked at 380×300 and 460×360 as well, for sideways scrolling, overlapping toolbar items and cut-off buttons.
- Owner Panel: a world map on Overview and on Computers, with a bubble for each country sized by its computers and a list of the top countries. On Computers, click a country to see only its computers.
- Fixed: History showed "slice is not a function" when the cleaning engine answered with a plain list.
- FEATURES.md: one list of Free and Pro features for the website, kept up to date with each release.

On macOS, if the app is reported as damaged, run: `xattr -cr /Applications/Swep.app`
