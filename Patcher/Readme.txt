GHOSTS 'N GOBLINS / MAKAIMURA - ARTORIA EDITIONS
================================================

You must provide your own ROM folders (same directory as these scripts).
Each folder name matches a section in Patching Layout.csv:

  gng        = Ghosts 'n Goblins (World)
  gngnew     = Makaimura / GnG (World) — layout uses mjg_* / capsom_* source names
  gngb       = Ghosts 'n Goblins (World set 3 / alternate layout)
  gngc       = Ghosts 'n Goblins (World set 4 — mm_c_* sources)
  gngt       = Ghosts 'n Goblins (USA) — mmt*/mm* sources per CSV
  makaimur   = Makaimura (Japan)
  makaimurb  = Makaimura (Japan revision B)
  makaimurc  = Makaimura (Japan revision C)
  makaimurg  = Makaimura (Japan revision G)

HOW TO USE THE .BAT FILES
-------------------------

1. Verify (optional but recommended)
   Run the script that matches the ROM folder you will patch:

   - 1. verify_gng_romset.bat
   - 1. verify_gngnew_romset.bat
   - 1. verify_gngb_romset.bat
   - 1. verify_gngc_romset.bat
   - 1. verify_gngt_romset.bat
   - 1. verify_makaimur_romset.bat
   - 1. verify_makaimurb_romset.bat
   - 1. verify_makaimurc_romset.bat
   - 1. verify_makaimurg_romset.bat

   Fix or replace ROMs if anything is missing. verify_gng_romset.bat compares
   files to expected CRCs; the other verify scripts check presence and print
   CRC32 for reference (no expected-value match).

2. Patch
   - 2. patch_roms.bat — menu options 1–18 are one build each; 19 patches all
     18 builds; 20 exits.

   Build types and output folders (Maiden / Knight pairs):

     gngmaiden / gngknight           -> folders gngmaiden, gngknight
     gngmaidennew / gngknightnew     -> gngmaidennew, gngknightnew
     gngmaidenb / gngknightb         -> gngmaidenb, gngknightb
     gngmaidenc / gngknightc         -> gngmaidenc, gngknightc
     gngmaident / gngknightt         -> gngmaident, gngknightt  (USA / gngt)
     makmaiden / makknight           -> makmaiden, makknight
     makmaidenb / makknightb         -> makmaidenb, makknightb
     makmaidenc / makknightc         -> makmaidenc, makknightc
     makmaideng / makknightg         -> makmaideng, makknightg

   Patched ROMs are written next to these scripts in the folders above.

Requirements: flips.exe in this folder; BPS files under patches\maiden_artoria
and patches\knight_artoria; layout from Patching Layout.csv.
