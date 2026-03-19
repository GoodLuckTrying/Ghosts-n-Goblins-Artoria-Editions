# Ghosts'n Goblins / Makaimura — Knight / Maiden Artoria Edition

Arcade hack for **Ghosts'n Goblins** / **Makaimura** that replaces Arthur with **Artoria** in two variants: **Maiden Edition** and **Knight Edition**.

**v1.1** · by [GoodLuckTrying](https://github.com/GoodLuckTrying) & [Poody](https://twitter.com/hetagaki_poody)

---

## Version 1.2 changes
- Added credits & versioning to titlescreen.

## Version 1.1 changes

- Added **gng** (new ROM discovered, using capsom mask roms) and **gngb** (formerly known as "gnga") to the patcher.
- For these two sets you must use **romdata** for FB Neo or sideload into MAME.

---

## Compatible ROM sets

### Original (base game)

| ROM set   | Description |
|-----------|-------------|
| `gng`     | Ghosts'n Goblins (World? set 1) — new ROM discovered (capsom mask name) |
| `gnga`    | Ghosts'n Goblins (World? set 2) — base for gngknight / gngmaiden |
| `gngb`    | Ghosts'n Goblins (World? set 3) |
| `makaimur`| Makaimura (Japan) — base for makknight / makmaiden |

### Knight Artoria Edition

| ROM set     | Description |
|-------------|-------------|
| `gngknight` | Ghosts'n Goblins — Knight Artoria Edition (World? set 2) [FB Neo] |
| `makknight` | Makaimura — Knight Artoria Edition (Japan) [FB Neo] |
| gngknightnew| Ghosts'n Goblins — Knight Artoria Edition (World? set 1) [Requires romdata] |
| gngknightb  | Ghosts'n Goblins — Knight Artoria Edition (World? set 3) [Requires romdata] |

### Maiden Artoria Edition

| ROM set     | Description |
|-------------|-------------|
| `gngmaiden` | Ghosts'n Goblins — Maiden Artoria Edition (World? set 2) [FB Neo] |
| `makmaiden` | Makaimura — Maiden Artoria Edition (Japan) [FB Neo] |
| gngmaidennew| Ghosts'n Goblins — Maiden Artoria Edition (World? set 1) [Requires romdata] |
| gngmaidenb  | Ghosts'n Goblins — Maiden Artoria Edition (World? set 3) [Requires romdata] |

**FB Neo** currently supports only **gngmaiden**, **gngknight**, **makmaiden**, and **makknight**. Patches for the new **gng** and **gngb** require using romdata to load into FB Neo. The patcher will be updated as other emulators adopt the new sets.

---

## Changes (content)

- **Arthur → Artoria**  
  Full replacement: sprites, life icon, map icon, and dialogue (Maiden or Knight variant).
- **Dialogue**  
  Typos and "Engrish" corrected.
- **Enemies**  
  All enemy sprites redone; most enemy attack sprites redone.
- **Weapons**  
  All weapon sprites redone.
- **Other graphics**  
  Some fire graphics redone; Princess Prin Prin redone.
- **Logos**  
  New logo for both World and Japanese versions.
- **Easter egg**  
  Citizen Dolls replaced with "Capcom Gals" — can you name them all?

---

## Patching instructions

You must provide your own ROM folders:

- **`gng`** — full Ghosts'n Goblins (World) romset  
- **`makaimur`** — full Makaimura (Japan) romset  

Place each folder in the same directory as the Patcher scripts (or as required by the verify scripts).

### Using the .bat files

1. **Verify your ROMs**
   - `1. verify_gng_romset.bat` — checks the **gng** folder (original "gng", now referred to as **gnga** from March onwards).
   - `1. verify_makaimur_romset.bat` — checks the **makaimur** folder.
   - `1. verify_gngnew_romset.bat` — checks the **gngnew** folder (this is the new "gng" in emulators; in the patcher it is still called **gngnew**).
   - `1. verify_gngb_romset.bat` — checks the **gngb** folder (formerly gnga).
   Run the one(s) you use; fix or replace the romset if verification fails.

2. **Patch**
   - Run `2. patch_roms.bat` and choose:
     - 1–4: gngmaiden, gngknight, makmaiden, makknight (output to their own folders; supported by FB Neo).
     - 5–8: gngmaidennew, gngknightnew, gngmaidenb, gngknightb (require romdata).
     - 9: Patch all.
   Patched ROMs go into **gngmaiden**, **gngknight**, **makmaiden**, **makknight** respectively.

**Requirement:** `flips.exe` must be in the Patcher folder.

---

## FB Neo — using romdata

### Standalone FB Neo

1. Patch the ROMs (including the new gng / gngb variants if desired).
2. Open `Patcher\romdata (To sideload in FB Neo new gng, gngb)` — you’ll see:
   - `gngknight.dat`
   - `gngknightb.dat`
   - `gngmaiden.dat`
   - `gngmaidenb.dat`
3. Copy the romdata files you need into **FBNEO/support/romdata/**.
4. In FB Neo: **Game → Open Rom Data manager**.

### RetroArch (FB Neo core)

1. Patch the ROMs.
2. Copy the desired romsets and romdata files into **RetroArch’s SYSTEM_DIRECTORY/fbneo/romdata/**.
3. Open the base game: for **gngmaidenb** / **gngknightb** use **gng2**; for **gngmaidennew** / **gngknightnew** use **gng**.
4. **Quick Menu → Core Options** → enable **Allow patched romsets**.
5. Scroll to the RomData menu, enable the desired entries, then use RetroArch’s **Restart** action.

---

## MAME

1. Patch the ROMs yourself, keeping the original filenames. See **Guide/Patching Layout.csv** for which patch applies to which file.
2. Sideload by running MAME with the desired driver, e.g.:
   - `mame.exe gng`
   - `mame.exe makaimur`
   - `mame.exe gnga`
   - `mame.exe gngb`  
   (Adjust if your MAME build uses different names.)

---

## Credits

- **dink** — Checksum bypass for the gng program ROM and major help understanding the ROM set.
- **poody** — All new sprite art.
- **phonymike** — Key help making the graphics editable in Tile Molester / YY-CHR.
