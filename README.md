# Ghosts'n Goblins / Makaimura — Knight / Maiden Artoria Edition

Arcade hack for **Ghosts'n Goblins** / **Makaimura** that replaces Arthur with **Artoria** in two variants: **Maiden Edition** and **Knight Edition**.

**v1.2** · by [GoodLuckTrying](https://github.com/GoodLuckTrying) & [Poody](https://twitter.com/hetagaki_poody)

---

## Version 1.2 changes

- Added credits & versioning to titlescreen.
- Added romdata support to: **gngc**, **gngt**, **makaimurb**, **makaimurc**, **makaimurg**

## Version 1.1 changes

- Added **gngnew** (new ROM discovered, now known as **gng**) and **gngb** (known as **gnga** until then) to the patcher.
- For these two sets you must use **romdata** for FB Neo or sideload into MAME.

---

## Compatible ROM sets

### Original (base game)

| ROM set     | Description |
|-------------|-------------|
| `gng`       | Ghosts'n Goblins (World? set 1) — new ROM discovered under the capsom mask name |
| `gnga`      | Ghosts'n Goblins (World? set 2) — base for gngknight / gngmaiden |
| `gngb`      | Ghosts'n Goblins (World? set 3) |
| `gngc`      | Ghosts'n Goblins (World? set 4) |
| `makaimur`  | Makaimura (Japan) |
| `makaimurb` | Makaimura (Japan revision B) |
| `makaimurc` | Makaimura (Japan revision C) |
| `makaimurg` | Makaimura (Japan revision G) |

### Knight Artoria Edition

| ROM set       | Description |
|---------------|-------------|
| `gngknight`   | Ghosts'n Goblins — Knight Artoria Edition (World? set 2) [FB Neo] |
| gngknightnew  | Ghosts'n Goblins — Knight Artoria Edition (World? set 1) |
| gngknightb    | Ghosts'n Goblins — Knight Artoria Edition (World? set 3) |
| gngknightc    | Ghosts'n Goblins — Knight Artoria Edition (World? set 4) |
| gngknightt    | Ghosts'n Goblins — Knight Artoria Edition (US) |
| `makknight`   | Makaimura — Knight Artoria Edition (Japan) [FB Neo] |
| makknightb    | Makaimura — Knight Artoria Edition (Japan revision B) |
| makknightc    | Makaimura — Knight Artoria Edition (Japan revision C) |
| makknightg    | Makaimura — Knight Artoria Edition (Japan revision G) |

### Maiden Artoria Edition

| ROM set       | Description |
|---------------|-------------|
| `gngmaiden`   | Ghosts'n Goblins — Maiden Artoria Edition (World? set 2) [FB Neo] |
| gngmaidennew  | Ghosts'n Goblins — Maiden Artoria Edition (World? set 1) |
| gngmaidenb    | Ghosts'n Goblins — Maiden Artoria Edition (World? set 3) |
| gngmaidenc    | Ghosts'n Goblins — Maiden Artoria Edition (World? set 4) |
| gngmaident    | Ghosts'n Goblins — Maiden Artoria Edition (US) |
| `makmaiden`   | Makaimura — Maiden Artoria Edition (Japan) [FB Neo] |
| makmaidenb    | Makaimura — Maiden Artoria Edition (Japan revision B) |
| makmaidenc    | Makaimura — Maiden Artoria Edition (Japan revision C) |
| makmaideng    | Makaimura — Maiden Artoria Edition (Japan revision G) |

**FB Neo** currently supports only **gngmaiden**, **gngknight**, **makmaiden**, and **makknight**. Patches for the new **gng** and **gngb** (and other variants) require using **romdata** to load into FB Neo. The patcher will be updated as things settle with the new ROM across the rest of the emulators.

**gngknight** / **gngmaiden** are based on the version that was **gng** until recently (now **gnga**).

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
   - `1. verify_gng_romset.bat` — checks the **gng** folder (original "gng", known as **gnga** from March onwards).
   - `1. verify_makaimur_romset.bat` — checks the **makaimur** folder.
   - `1. verify_gngnew_romset.bat` — checks the **gngnew** folder (new "gng" in emulators; here still named **gngnew**).
   - `1. verify_gngb_romset.bat` — checks the **gngb** folder (formerly gnga).
   Run the one(s) you use; fix or replace the romset if verification fails.

2. **Patch** — run `2. patch_roms.bat` and choose:

   | # | Target | Notes |
   |---|--------|--------|
   | 1 | gngmaiden | World? set 2 — [FB Neo] |
   | 2 | gngknight | World? set 2 — [FB Neo] |
   | 3 | gngmaidennew | World? set 1 |
   | 4 | gngknightnew | World? set 1 |
   | 5 | gngmaidenb | World? set 3 |
   | 6 | gngknightb | World? set 3 |
   | 7 | gngmaidenc | World? set 4 |
   | 8 | gngknightc | World? set 4 |
   | 9 | gngmaident | US |
   | 10 | gngknightt | US |
   | 11 | makmaiden | Japan — [FB Neo] |
   | 12 | makknight | Japan — [FB Neo] |
   | 13 | makmaidenb | Japan revision B |
   | 14 | makknightb | Japan revision B |
   | 15 | makmaidenc | Japan revision C |
   | 16 | makknightc | Japan revision C |
   | 17 | makmaideng | Japan revision G |
   | 18 | makknightg | Japan revision G |
   | 19 | Patch all | |
   | 20 | Exit | |

Patched ROMs go into **gngmaiden**, **gngknight**, **makmaiden**, **makknight** respectively. Those four romsets are supported by FinalBurn Neo and its libretro core.

**Requirement:** `flips.exe` must be in the Patcher folder.

---

## FB Neo — using romdata

### Standalone FB Neo

1. Patch the ROMs.
2. Open `Patcher\romdata (To sideload in FB Neo new gng, gngb)` — copy the `.dat` files you need into **FBNEO/support/romdata/**. Included files:

   - `gngknight.dat`, `gngknightb.dat`, `gngknightc.dat`, `gngknightt.dat`
   - `gngmaiden.dat`, `gngmaidenb.dat`, `gngmaidenc.dat`, `gngmaident.dat`
   - `makknightb.dat`, `makknightc.dat`, `makknightg.dat`
   - `makmaidenb.dat`, `makmaidenc.dat`, `makmaideng.dat`

3. Open FB Neo → **Game → Open Rom Data manager**.

### RetroArch (FB Neo core)

1. Patch the ROMs.
2. Copy the romsets and romdata files you need into **RetroArch’s SYSTEM_DIRECTORY/fbneo/romdata/**.
3. Open the base game (for **gngmaidenb** / **gngknightb** use **gng2**; for **gngmaidennew** / **gngknightnew** use **gng**).
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
