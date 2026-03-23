# Ghosts'n Goblins / Makaimura — Knight / Maiden Artoria Edition

Arcade hack for **Ghosts'n Goblins** / **Makaimura** that replaces Arthur with **Artoria** in two variants: **Maiden Edition** and **Knight Edition**.

- 21/3/2026: Hack's main 4 sets are supported by [FB Neo](https://github.com/finalburnneo/FBNeoFB Neo)! Rest of the sets can be loaded through romdata.
- 22/3/2026: Full hack is now supported by [HBMame](https://github.com/Robbbert/hbmame)!
**v1.3** · by [GoodLuckTrying](https://github.com/GoodLuckTrying) & [Poody](https://twitter.com/hetagaki_poody)

---

## Version 1.3 changes

- Emulators updated the ROM order again; the patcher and docs follow that layout. As of this release, **FB Neo** already includes the new ordering — update the core or use a current nightly build.

## Version 1.2 changes

- Added credits & versioning to titlescreen.
- Added romdata support to: **gngc**, **gngt**, **makaimurb**, **makaimurc**, **makaimurg**

## Version 1.1 changes

- Added **gngnew** (new ROM discovered, now known as **gng**) and **gngb** (known as **gnga** until then) to the patcher.
- For those sets you must use **romdata** for FB Neo or sideload into MAME.

---

## Compatible ROM sets

### Original (base game)

| ROM set     | Description |
|-------------|-------------|
| `gng`       | Ghosts'n Goblins (World? set 1) — was **gngc** until 20/03/2026 |
| `gnga`      | Ghosts'n Goblins (World? set 2) — was **gng** until 20/03/2026; new ROM discovered under the capsom mask name |
| `gngb`      | Ghosts'n Goblins (World? set 3) — was **gnga** until 20/03/2026 (and **gngb** before the capsom ROM above) |
| `gngc`      | Ghosts'n Goblins (World? set 4) — was **gngb** until 20/03/2026 |
| `gngt`      | Ghosts'n Goblins (US) |
| `makaimur`  | Makaimura (Japan) |
| `makaimurb` | Makaimura (Japan revision B) |
| `makaimurc` | Makaimura (Japan revision C) |
| `makaimurg` | Makaimura (Japan revision G) |

### Knight Artoria Edition

| ROM set      | Description |
|--------------|-------------|
| `gngknight`  | Ghosts'n Goblins — Knight Artoria Edition (World? set 1) **[FB Neo]** |
| gngknighta   | Ghosts'n Goblins — Knight Artoria Edition (World? set 2) |
| gngknightb   | Ghosts'n Goblins — Knight Artoria Edition (World? set 3) |
| gngknightc   | Ghosts'n Goblins — Knight Artoria Edition (World? set 4) |
| gngknightt   | Ghosts'n Goblins — Knight Artoria Edition (US) |
| `makknight`  | Makaimura — Knight Artoria Edition (Japan) **[FB Neo]** |
| makknightb   | Makaimura — Knight Artoria Edition (Japan revision B) |
| makknightc   | Makaimura — Knight Artoria Edition (Japan revision C) |
| makknightg   | Makaimura — Knight Artoria Edition (Japan revision G) |

### Maiden Artoria Edition

| ROM set      | Description |
|--------------|-------------|
| `gngmaiden`  | Ghosts'n Goblins — Maiden Artoria Edition (World? set 1) **[FB Neo]** |
| gngmaidena   | Ghosts'n Goblins — Maiden Artoria Edition (World? set 2) |
| gngmaidenb   | Ghosts'n Goblins — Maiden Artoria Edition (World? set 3) |
| gngmaidenc   | Ghosts'n Goblins — Maiden Artoria Edition (World? set 4) |
| gngmaident   | Ghosts'n Goblins — Maiden Artoria Edition (US) |
| `makmaiden`  | Makaimura — Maiden Artoria Edition (Japan) **[FB Neo]** |
| makmaidenb   | Makaimura — Maiden Artoria Edition (Japan revision B) |
| makmaidenc   | Makaimura — Maiden Artoria Edition (Japan revision C) |
| makmaideng   | Makaimura — Maiden Artoria Edition (Japan revision G) |

**FB Neo** currently supports only **gngmaiden**, **gngknight**, **makmaiden**, and **makknight**. Patches for every other official revision/set need **romdata** in FB Neo. Future updates will likely focus on emulator support.

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

1. **Verify your ROMs** (run the scripts that match the sets you use):

   - `1. verify_gng_romset.bat` — **gng**
   - `1. verify_gnga_romset.bat` — **gnga**
   - `1. verify_gngb_romset.bat` — **gngb**
   - `1. verify_gngc_romset.bat` — **gngc**
   - `1. verify_gngt_romset.bat` — **gngt**
   - `1. verify_makaimur_romset.bat` — **makaimur**
   - `1. verify_makaimurb_romset.bat` — **makaimurb**
   - `1. verify_makaimurc_romset.bat` — **makaimurc**
   - `1. verify_makaimurg_romset.bat` — **makaimurg**

2. **Patch** — run `2. patch_roms.bat` and choose:

   | # | Target | Notes |
   |---|--------|--------|
   | 1 | gngmaiden | World? set 1 — **[FB Neo]** |
   | 2 | gngknight | World? set 1 — **[FB Neo]** |
   | 3 | gngmaidena | World? set 2 |
   | 4 | gngknighta | World? set 2 |
   | 5 | gngmaidenb | World? set 3 |
   | 6 | gngknightb | World? set 3 |
   | 7 | gngmaidenc | World? set 4 |
   | 8 | gngknightc | World? set 4 |
   | 9 | gngmaident | US |
   | 10 | gngknightt | US |
   | 11 | makmaiden | Japan — **[FB Neo]** |
   | 12 | makknight | Japan — **[FB Neo]** |
   | 13 | makmaidenb | Japan revision B |
   | 14 | makknightb | Japan revision B |
   | 15 | makmaidenc | Japan revision C |
   | 16 | makknightc | Japan revision C |
   | 17 | makmaideng | Japan revision G |
   | 18 | makknightg | Japan revision G |
   | 19 | Patch all | |
   | 20 | Exit | |

Patched ROMs go into **gngmaiden**, **gngknight**, **makmaiden**, and **makknight** respectively. Those four romsets are supported by FinalBurn Neo and its libretro core.

**Requirement:** `flips.exe` must be in the Patcher folder.

---

## FB Neo — using romdata

Romdata lives in:

`Patcher\romdata (To sideload every revision in FB Neo)`

*(README.txt also describes this folder as “FB Neo gnga, gngb, etc.” — same contents.)*

### Standalone FB Neo

1. Patch the ROMs.
2. Copy the `.dat` files you need into **FBNEO/support/romdata/**. Included files:

   - `gngknighta.dat`, `gngknightb.dat`, `gngknightc.dat`, `gngknightt.dat`
   - `gngmaidena.dat`, `gngmaidenb.dat`, `gngmaidenc.dat`, `gngmaident.dat`
   - `makknightb.dat`, `makknightc.dat`, `makknightg.dat`
   - `makmaidenb.dat`, `makmaidenc.dat`, `makmaideng.dat`

3. Open FB Neo → **Game → Open Rom Data manager**.

### RetroArch (FB Neo core)

1. Patch the ROMs.
2. Copy the romsets and romdata files you need into **RetroArch’s SYSTEM_DIRECTORY/fbneo/romdata/**.
3. Launch the **base** Ghosts'n Goblins driver that matches the revision you patched (e.g. **gng** for World set 1, **gnga** for set 2, **gngb** for set 3, **gngc** for set 4, **gngt** for US — use the names your core shows).
4. **Quick Menu → Core Options** → enable **Allow patched romsets**.
5. Use the RomData menu, enable the entries you need, then **Restart** RetroArch.

---

## MAME

1. Patch the ROMs yourself, keeping the original filenames. See **Guide/Patching Layout.csv** for which patch applies to which file.
2. Sideload by running MAME with the desired driver, e.g.:

   - `mame.exe gng`
   - `mame.exe makaimur`
   - `mame.exe gnga`
   - `mame.exe gngb`
   - …and other drivers as your MAME build lists them.

---

## Credits

- **dink** — Checksum bypass for the gng program ROM and major help understanding the ROM set.
- **poody** — All new sprite art.
- **phonymike** — Key help making the graphics editable in Tile Molester / YY-CHR.
