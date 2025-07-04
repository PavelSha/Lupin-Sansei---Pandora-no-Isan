# Lupin Sansei - Pandora no Isan
This is try to disassembly Famicom game "Lupin Sansei - Pandora no Isan".
The repo was created for educational purposes.
All rights reserved by モンキー・パンチ, NAMCO.
## Pre-Building
Building requires the assets files (graphics data - ``CHR_ROM.chr`` and audio data - ``audio_track**.bin``) that should be located in the project directory ``assets``.
For that purpose ``assets.txt`` file exists in the project directory ``assets`` which contains a list of assets, their offset in original file ``Lupin Sansei - Pandora no Isan (J) [!].nes`` (see below) and their length.
Example, ``CHR_ROM.chr`` is the part of the original file than is started with ***131088-th*** (***0x020010***) byte and have a length - ***65536*** bytes.
If you have Python you can execute ``tools/prebuild.py`` script where is 1st argument - the full path to the original file, 2nd argument - the path to the project directory ``assets``.
Example: ``python prebuild.py "c:\Lupin Sansei - Pandora no Isan\original.nes" "c:\Lupin Sansei - Pandora no Isan\assets\\"``
## Building
-  Windows - run a command ***assemble.bat***
-  Windows - run a command ***assemble.bat*** ***en*** (for an English translation)
-  Linux, MacOS - run a command ***assemble.sh*** (more information - [NES Games Disassembly](https://github.com/cyneprepou4uk/NES-Games-Disassembly))
## Statistic
-  Code Logger bytes (by lines) - ***45.51%***
-  Data Logger bytes (by lines) - ***53.83%***
-  Unknown bytes (by lines)     - ***0.00%***
-  Code commented               - ***100.00%***
## Documentation (in Russian)
-  [terminology](docs/ru/terminology.md) - Basic terminology
-  [code review](docs/ru/code_review.md) - The document contains an analyze a some pieces of code
-  [bestiary](docs/ru/bestiary.md) - The list of all enemies in the game
-  [maze1](docs/ru/maze1.txt), [maze2](docs/ru/maze2.txt), [maze3](docs/ru/maze3.txt), [maze4](docs/ru/maze4.txt) - The information of the mazes on the level 4
-  [rooms](docs/ru/rooms.md) - The list of all rooms in the game. The game level can be thought of as a large room.
-  [Game Genie Codes](docs/ru/game_genie_codes.md) - It's the list of some Game Genie Codes.
-  [ROM_Map](docs/ru/ROM_Map.md) - This is a detailed overview of the layout of the ROM file's contents.
-  [RAM_Map](src/bank_ram.inc) - The list of some decrypted variables.
-  [audio tracks](docs/ru/audio_tracks.md) - All audio tracks from the game.
-  [messages](docs/ru/messages.md) - All dialog messages from the game.
## Resources
-  Lupin Sansei - Pandora no Isan (J) [!]

***CRC32***: D994D5FF

***MD5***: 76FDF7F6623C9486360ADF5D6762D7DB

***SHA-1***: B633CC515C6A913D5A65A230E0698446331869A5

-  Lupin the 3rd: Pandora's Legacy (Released By	Vice Translations, an English translation)

***CRC32***: 6054CA94

***MD5***: 4E0AC251E0FCC19F005E950934024F2B

***SHA-1***: E66D818A0625C12F3410ABC326D1DC1E5F8B2835

-  [BZK 6502 Disassembler](https://github.com/cyneprepou4uk/BZK-6502-Disassembler) - the main tool for creating disassembly source code.
-  [FCEUX](https://fceux.com/web/home.html) - the Famicom emulator, debugger, PPU and name tables viewer, trace logger, recording movies tool, autohotkey (Tool-Assisted Speedrun) tool.