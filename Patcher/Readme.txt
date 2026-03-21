GHOSTS 'N GOBLINS / MAKAIMURA - ARTORIA EDITIONS
================================================

You must provide your own ROM folders (same directory as these scripts).
Each folder name matches a section in Patching Layout.csv:

  gng        = Ghosts 'n Goblins (World? 1) — mm_c_* / gg* sources per CSV
  gnga       = Ghosts 'n Goblins (World? 2) — mjg_* / capsom_* sources per CSV
  gngb       = Ghosts 'n Goblins (World? 3) — gg* layout per CSV
  gngc       = Ghosts 'n Goblins (World? 4) — gng.n* / gg* sources per CSV
  gngt       = Ghosts 'n Goblins (USA) — mmt*/mm* sources per CSV
  makaimur   = Makaimura (Japan)
  makaimurb  = Makaimura (Japan revision B)
  makaimurc  = Makaimura (Japan revision C)
  makaimurg  = Makaimura (Japan revision G)

HOW TO USE THE .BAT FILES
-------------------------

1. Verify (optional but recommended)
   Each script name matches the ROM folder it reads (same name as the folder):

   - 1. gng_verify_romset.bat       -> `gng`
   - 1. gnga_verify_romset.bat      -> `gnga`
   - 1. gngb_verify_romset.bat      -> `gngb`
   - 1. gngc_verify_romset.bat      -> `gngc`
   - 1. gngt_verify_romset.bat       -> `gngt`
   - 1. makaimur_verify_romset.bat   -> `makaimur`
   - 1. makaimurb_verify_romset.bat  -> `makaimurb`
   - 1. makaimurc_verify_romset.bat  -> `makaimurc`
   - 1. makaimurg_verify_romset.bat  -> `makaimurg`

   Fix or replace ROMs if anything is missing. Only `1. gngb_verify_romset.bat`
   compares files to expected CRCs; the other verify scripts check presence and
   print CRC32 for reference (no expected-value match).

2. Patch
   - 2. patch_roms.bat — menu options 1–18 are one build each; 19 patches all
     18 builds; 20 exits.

   Build types and output folders (Maiden / Knight pairs):

     gngmaiden / gngknight           -> folders gngmaiden, gngknight (World? 1)
     gngmaidena / gngknighta         -> gngmaidena, gngknighta (World? 2 / ROM folder gnga)
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
