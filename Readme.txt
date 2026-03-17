Ghosts 'n Goblins/Makaimura - Knight/Maiden Artoria Edition v1.1 - by GoodLuckTrying (https://github.com/GoodLuckTrying) & Poody (https://twitter.com/hetagaki_poody)

This is a Ghosts'n Goblins/Makaimura sprite hack that changes Arthur’s sprites into those of a Maiden/Knight, Artoria.

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
makaimur: Makaimura (Japan)
================================================================================
			Knight Artoria Edition
================================================================================
gngknight: Ghosts 'n Goblins - Maiden Artoria Edition
makknight: Ghosts 'n Goblins - Maiden Artoria Edition
================================================================================
			Maiden Artoria Edition
================================================================================
gngmaiden: Ghosts 'n Goblins - Maiden Artoria Edition
makmaiden: Ghosts 'n Goblins - Maiden Artoria Edition

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
		1. Patch gngmaiden   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 2)] [Supported by FB Neo]
		2. Patch gngknight   [Ghosts'n Goblins - Knight Artoria Edition (World? set 2)] [Supported by FB Neo]
		3. Patch makmaiden   (Makaimura - Maiden Artoria Edition) [Supported by FB Neo]
		4. Patch makknight   (Makaimura - Knight Artoria Edition) [Supported by FB Neo]
		5. Patch gngmaidennew (Ghosts'n Goblins - Maiden Artoria Edition (World? set 1)] [Requires Romdata]
		6. Patch gngknightnew (Ghosts'n Goblins - Knight Artoria Edition (World? set 1)] [Requires Romdata]
		7. Patch gngmaidenb  [Ghosts'n Goblins - Maiden Artoria Edition (World? set 3)] [Requires Romdata]
		8. Patch gngknightb  (Ghosts'n Goblins - Knight Artoria Edition (World? set 3)] [Requires Romdata]
		9. Patch all
		10. Exit
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