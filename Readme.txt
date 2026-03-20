Ghosts 'n Goblins/Makaimura - Knight/Maiden Artoria Edition v1.2 - by GoodLuckTrying (https://github.com/GoodLuckTrying) & Poody (https://twitter.com/hetagaki_poody)

This is a Ghosts'n Goblins/Makaimura sprite hack that changes Arthur’s sprites into those of a Maiden/Knight, Artoria.

Version 1.2 Changes:
- Added credits & versioning to titlescreen.
- Added romdata support to: gngc, gngt, makaimurb, makaimurc, makaimurg

Version 1.1 Changes:
- Added gngnew (New rom discovered, now known as "gng") and gngb (Known as "gnga" until now) to the patcher.
- For these 2, you'll have to use romdata for FB Neo or Side Load into MAME.

Changes:
- Fully replaces Arthur with a Maiden/Knight, Artoria.
  - Sprites, life icon, map icon, dialogue.
- Updates the dialogue correcting typos and "Engrish".
- Every enemy sprite has been redone.
- Most enemy attack sprites have been redone.
- Every weapon sprite has been redone.
- Some fire graphics have been redone.
- Princess Prin Prin has been redone.
- New logo for both World and Japanese versions.
- Citizen Dolls have been changed into "Capcom Gals", can you name them all?

Currently, FB Neo only supports gngmaiden, gngknight, makmaiden and makknight.

Patches are included for the new gng and gngb. Will require using romdata to load into FB Neo.

I shall update the patcher once things settle with the new rom thorough the rest of the emulators.

gngknight/gngmaiden are based on the version known as "gng" up until last month (Currently gnga).
================================================================================
                    COMPATIBLE GHOSTS 'N GOBLINS ROMSETS
================================================================================
gng: Ghosts 'n Goblins (World? set 1) [New ROM discovered a month ago under the capsom mask name]
gnga: Ghosts 'n Goblins (World? set 2) [The one gngknight/gngmaiden are based on]
gngb: Ghosts 'n Goblins (World? set 3)
gngc: Ghosts 'n Goblins (World? set 4)
makaimur: Makaimura (Japan)
makaimurb: Makaimura (Japan revision B)
makaimurc: Makaimura (Japan revision C)
makaimurg: Makaimura (Japan revision G)
================================================================================
			Knight Artoria Edition
================================================================================
gngknight: Ghosts 'n Goblins - Knight Artoria Edition (World? set 2)
gngknightnew: Ghosts 'n Goblins - Knight Artoria Edition (World? set 1)
gngknightb: Ghosts 'n Goblins - Knight Artoria Edition (World? set 3)
gngknightc: Ghosts 'n Goblins - Knight Artoria Edition (World? set 4)
gngknightt: Ghosts 'n Goblins - Knight Artoria Edition (US)
makknight: Makaimura - Knight Artoria Edition (Japan)
makknightb: Makaimura - Knight Artoria Edition (Japan revision B)
makknightc: Makaimura - Knight Artoria Edition (Japan revision C)
makknightg: Makaimura - Knight Artoria Edition (Japan revision G)
================================================================================
			Maiden Artoria Edition
================================================================================
gngmaiden: Ghosts 'n Goblins - Maiden Artoria Edition (World? set 2)
gngmaidennew: Ghosts 'n Goblins - Maiden Artoria Edition (World? set 1)
gngmaidenb: Ghosts 'n Goblins - Maiden Artoria Edition (World? set 3)
gngmaidenc: Ghosts 'n Goblins - Maiden Artoria Edition (World? set 4)
gngmaident: Ghosts 'n Goblins - Maiden Artoria Edition (US)
makmaiden: Makaimura - Maiden Artoria Edition (Japan)
makmaidenb: Makaimura - Maiden Artoria Edition (Japan revision B)
makmaidenc: Makaimura - Maiden Artoria Edition (Japan revision C)
makmaideng: Makaimura - Maiden Artoria Edition (Japan revision G)
================================================================================
			Patching Instructions
================================================================================
You must provide your own ROM folders:
  - "gng"     = full Ghosts 'n Goblins (World) romset
  - "makaimur" = full Makaimura (Japan) romset
Place each folder in the same directory as these scripts.

HOW TO USE THE .BAT FILES
-------------------------

1. Verify your roms
   - "1. verify_gng_romset.bat" checks the gng folder (It's checking for the original "gng", which will be known as "gnga" March onwards)
   - "1. verify_makaimur_romset.bat" checks the makaimur folder
   - "1. verify_gngnew_romset.bat" checks the gngnew folder (THIS is the new "gng" in the emulators; but here, we still consider the original as "gng", so this will be renamed "gngnew")
   - "1. verify_gngb_romset.bat" checks the gngb folder (This used to be gnga, but now moved to gngb)
   Run the one(s) you use; find the correct romset if anything fails.

2. Patch
   - "2. patch_roms.bat" — choose one:
	1. Patch gngmaiden    [Ghosts'n Goblins - Maiden Artoria Edition (World? set 2)] [Supported by FB Neo]
	2. Patch gngknight    [Ghosts'n Goblins - Knight Artoria Edition (World? set 2)] [Supported by FB Neo]
	3. Patch gngmaidennew (Ghosts'n Goblins - Maiden Artoria Edition (World? set 1)]
	4. Patch gngknightnew (Ghosts'n Goblins - Knight Artoria Edition (World? set 1)]
	5. Patch gngmaidenb   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 3)]
	6. Patch gngknightb   (Ghosts'n Goblins - Knight Artoria Edition (World? set 3)]
	7. Patch gngmaidenc   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 4)]
	8. Patch gngknightc   (Ghosts'n Goblins - Knight Artoria Edition (World? set 4)]
	9. Patch gngmaident   [Ghosts'n Goblins - Maiden Artoria Edition (US)]
	10. Patch gngknightt   (Ghosts'n Goblins - Knight Artoria Edition (US)]
	11. Patch makmaiden    (Makaimura - Maiden Artoria Edition) [Supported by FB Neo]
	12. Patch makknight    (Makaimura - Knight Artoria Edition) [Supported by FB Neo]
	13. Patch makmaidenb   [Makaimura - Maiden Artoria Edition (Japan revision B)]
	14. Patch makknightb   [Makaimura - Knight Artoria Edition (Japan revision B)]
	15. Patch makmaidenc   [Makaimura - Maiden Artoria Edition (Japan revision C)]
	16. Patch makknightc   [Makaimura - Knight Artoria Edition (Japan revision C)]
	17. Patch makmaideng   [Makaimura - Maiden Artoria Edition (Japan revision G)]
	18. Patch makknightg   [Makaimura - Knight Artoria Edition (Japan revision G)]
	19. Patch all
	20. Exit
Patched ROMs go into: gngmaiden, gngknight, makmaiden, makknight respectively.
These 4 folders/romsets are supported by FinalBurn Neo and its libretro core.

Requirements: flips.exe in this folder.

================================================================================
			How to use FB Neo's Rom Data (Emulator)
================================================================================
1. Patch the roms.
2. Open "Patcher\romdata (To sideload in FB Neo new gng, gngb)" folder. You'll see these:
 - gngknight.dat
 - gngknightb.dat
 - gngmaiden.dat
 - gngmaidenb.dat
3. Copy the romdata files you wish to use in FBNEO/support/romdata/ folder
4. Open FB Neo
5. Game > Open RomData manager
================================================================================
			How to use FB Neo's Rom Data (RetroArch)
================================================================================
1. Patch the roms.
2. Open "Patcher\romdata (To sideload in FB Neo new gng, gngb)" folder. You'll see these:
 - gngknight.dat
 - gngknightb.dat
 - gngmaiden.dat
 - gngmaidenb.dat
3. Copy the romsets and romdata files you wish to use in RetroArch's SYSTEM_DIRECTORY/fbneo/romdata/ folder.
4. Open the base game (For gngmaidenb/gngknightb, it's gng2. For gngmaidennew/gngknightnew, it's gng).
5. Go to Quick Menu > Core Options > and enable "Allow patched romsets".
5. Scroll to the bottom and you'll see the RomData menu.
 - To apply them, you need to launch the game, enable "Allow patched romsets", enable them in core options, then use RetroArch's "restart" action.
================================================================================
			How to load into MAME
================================================================================
1. You will need to patch the roms yourself, keeping the original names.
 - You will find what each patch patches in "Patching Layout.csv" under Guides.
2. Sideload the romset by making a .bat for the desired version in the root (In the folder here mame.exe is).
The .bat will only have this line:
mame.exe gng
mame.exe makaimur
mame.exe gnga
mame.exe gngb

Credits:
dink - Developer behind the checksum check bypass for the Program Roms, and tremendous help in understanding the romset.
poody - Artist behind every new sprite.
phonymike - Invaluable help in getting the graphics modifiable through Tile Molester/YY-CHR.