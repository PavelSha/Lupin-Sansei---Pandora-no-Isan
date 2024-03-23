$C000#vec_C000_RESET#disable interrupts
$C001##disable decimal mode (NES chip 2A03 doesn't use decimal mode)
$C002##--NO-COMMENT--
$C004##clear ppu
$C007##clear ppu
$C00A##clear ppu
$C00C#bra_C00C_wait_til_vblank#wait for vblank (1 time)
$C00F##--NO-COMMENT--
$C011#bra_C011_wait_til_vblank#wait for vblank (2 time)
$C014##--NO-COMMENT--
$C016##--NO-COMMENT--
$C018##set a stack pointer
$C019##--NO-COMMENT--
$C01B##set loop counter
$C01C#bra_C01C_memset_zero#[0x0200-0x02FF] in 0
$C01F##[0x0300-0x03FF] in 0
$C022##[0x0400-0x04FF] in 0
$C025##[0x0500-0x05FF] in 0
$C028##[0x0600-0x06FF] in 0
$C02B##[0x0700-0x07FF] in 0
$C02E##increment counter x
$C02F##--NO-COMMENT--
$C031#bra_C031_loop#[0x0000-0x0098] in 0
$C033##increment counter x
$C034##--NO-COMMENT--
$C036##If Register X < 0x99
$C038##set loop counter
$C03A#bra_C03A_loop#[0x00A7-0x00FF] in 0
$C03C##increments loop counter
$C03D##If Register X != 0
$C03F##--NO-COMMENT--
$C042##CONSTANT - Cutscene
$C044##assign a value
$C046#loc_C046_repeat_starting_mode#--NO-COMMENT--
$C048##--NO-COMMENT--
$C04B##--NO-COMMENT--
$C04D##switch bank 06_2 in 0xA000-0BFFF
$C050##--NO-COMMENT--
$C052##clear
$C054##clear
$C057##clear
$C059##clear
$C05B##clear
$C05D##clear
$C05F##clear
$C061##clear
$C063##clear
$C065##clear
$C067##clear
$C069##clear
$C06B##clear
$C06D##clear
$C06F##clear
$C072##clear
$C074##clear
$C076##clear
$C078##clear
$C07A##clear
$C07C##clear
$C07E##clear
$C080##--NO-COMMENT--
$C082##set apu frame counter - 4-step mode, the interrupts are disabled
$C085##--NO-COMMENT--
$C087##clear (see vChrLiveStatus)
$C089##--NO-COMMENT--
$C08C##bank 06_2
$C08F##bank 06_2
$C095#loc_C095#--NO-COMMENT--
$C097##Branch If cutscenes are used
$C099##--NO-COMMENT--
$C09C#loc_C09C#
$C09F##--NO-COMMENT--
$C0A2##--NO-COMMENT--
$C0A4##--NO-COMMENT--
$C0A7##--NO-COMMENT--
$C0A9##--NO-COMMENT--
$C0AA##--NO-COMMENT--
$C0AC##set loop counter
$C0AE##set assigning value
$C0B0#bra_C0B0_loop#[0x006C-0x0099] in 0x00
$C0B2##increments loop counter
$C0B3##--NO-COMMENT--
$C0B5##If Register X != 0x99
$C0B7#loc_C0B7_character_is_selected#--NO-COMMENT--
$C0B9##clear
$C0BC##--NO-COMMENT--
$C0BF##--NO-COMMENT--
$C0C5##--NO-COMMENT--
$C0C7##store the high position of the character
$C0C8##--NO-COMMENT--
$C0CA##store the low position of the character
$C0CB##--NO-COMMENT--
$C0CE##--NO-COMMENT--
$C0D1##retrieve the low position of the character
$C0D2##--NO-COMMENT--
$C0D4##retrieve the high position of the character
$C0D5##multiplicity of vHighViewPortPosX by 2 sets the nametable address (0x2000 or 0x2400)
$C0D7##activate the right pattern table (0x1000)
$C0D9##--NO-COMMENT--
$C0DF##clear
$C0E2##clear
$C0E5##clear
$C0ED##--NO-COMMENT--
$C0F0##--NO-COMMENT--
$C0F3##--NO-COMMENT--
$C0F6##--NO-COMMENT--
$C0F9##--NO-COMMENT--
$C0FC##--NO-COMMENT--
$C0FF##--NO-COMMENT--
$C102##--NO-COMMENT--
$C105##--NO-COMMENT--
$C107##clear locks
$C109##--NO-COMMENT--
$C10C##--NO-COMMENT--
$C10F##--NO-COMMENT--
$C111##CONSTANT - A final scene
$C113##If vSharedGameStatus != 0x0B
$C118#bra_C118_skip#--NO-COMMENT--
$C11A##Initializes a counter.
$C11C##--NO-COMMENT--
$C11E##Initializes a time of a demo scene.
$C120#bra_C120_wait#--NO-COMMENT--
$C123##--NO-COMMENT--
$C125##Branch If in game
$C12F#bra_C12F_skip#--NO-COMMENT--
$C132##If test mode is disabled
$C142##to sub_BC48 (bank 06_2)
$C148#bra_C148_skip#
$C14C##--NO-COMMENT--
$C14E##CONSTANT - status 'Select the character'
$C150##If vSharedGameStatus isn't contains 'Select the character'
$C152##--NO-COMMENT--
$C154##CONSTANT - select a character (1)
$C156##CONSTANT - 'the radio was using'
$C158##--NO-COMMENT--
$C15B##--NO-COMMENT--
$C15E#bra_C15E#
$C16F#bra_C16F#CONSTANT - no reason
$C171##--NO-COMMENT--
$C183#bra_C183_skip#
$C18B#bra_C18B_skip#
$C194#loc_C194#
$C1AF#bra_C1AF#
$C1B1#loc_C1B1#CONSTANT - no reason
$C1B3##--NO-COMMENT--
$C1B5##--NO-COMMENT--
$C1B7##store a last value
$C1B9##CONSTANT (see vChrLiveStatus)
$C1BB##All characters are ready to play, Lupin is selected
$C1C3#bra_C1C3#
$C1CA#tbl_C1CA_checkpoint_on_start_levels#
$C1CE#bra_C1CE#
$C1D0##Branch If in game
$C1D5#bra_C1D5#
$C1E9#bra_C1E9#
$C1F2#bra_C1F2#CONSTANT - 'the character is fell or arrested'
$C1F4##--NO-COMMENT--
$C1F9##CONSTANT - select a character (2)
$C1FB##--NO-COMMENT--
$C20E#bra_C20E_skip#
$C20F#bra_C20F#
$C22C#bra_C22C_skip#
$C232##to sub_B319 (bank 06_2)
$C235#bra_C235_skip#
$C23C#bra_C23C_skip#
$C246#bra_C246_skip#
$C251#bra_C251#
$C25B#loc_C25B#
$C26D##put empty cache
$C287#bra_C287#
$C28D#loc_C28D#
$C297##CONSTANT - Stop demo
$C299##If vMenuDemoIndex < 0x07
$C29B##CONSTANT - Cutscene
$C29D##--NO-COMMENT--
$C29F##CONSTANT - The menu
$C2A1##--NO-COMMENT--
$C2A3#bra_C2A3_skip#--NO-COMMENT--
$C2A6#loc_C2A6#
$C2C2#bra_C2C2#
$C2DF#bra_C2DF#
$C2ED#sub_C2ED_prepare_character_in_water#--NO-COMMENT--
$C2EF##CONSTANT - level 3.0 (water room)
$C2F1##If vNoSubLevel < 0x24
$C2F3##CONSTANT - level 4, map 1 (B2-D2) (0x41 - water room)
$C2F5##If vNoSubLevel >= 0x42
$C2F7##CONSTANT - the character is moving in the water
$C2F9##--NO-COMMENT--
$C2FB##--NO-COMMENT--
$C2FE#bra_C2FE_RTS#--NO-COMMENT--
$C2FF#sub_C2FF_update_ppu_ctrl_with_nmi#--NO-COMMENT--
$C301##CONSTANT - Generate an NMI at the start of the vblank
$C303##Always true
$C305#sub_C305_update_ppu_ctrl_with_no_nmi#--NO-COMMENT--
$C307##--NO-COMMENT--
$C309#bra_C309_skip#--NO-COMMENT--
$C30B##--NO-COMMENT--
$C30E##--NO-COMMENT--
$C30F#loc_C30F_screen_on#see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
$C311##Always true
$C313#sub_C313_screen_off#see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
$C315#bra_C315_skip#--NO-COMMENT--
$C318##--NO-COMMENT--
$C319#sub_C319_fill_ppu#CONSTANT - A white tile
$C31B##Always true
$C31D#sub_C31D_clear_ppu#CONSTANT - A black tile
$C31F#bra_C31F_skip#set a tile value
$C321##--NO-COMMENT--
$C324##--NO-COMMENT--
$C327##Read PPU status to reset the high/low latch
$C32A##For the first ppu data ($2000)
$C32C##--NO-COMMENT--
$C32F##For the second ppu data  ($2400)
$C331#sub_C331_store_ppu_data#--NO-COMMENT--
$C334##--NO-COMMENT--
$C336##--NO-COMMENT--
$C339##set loop counter (y = 0)
$C33A##set loop counter (x)
$C33C##put a tile value
$C33E#bra_C33E_loop#[$2000-$22FF] or [$2400-$26FF] in ram_0012
$C341##increment counter (y)
$C342##If Register Y != 0
$C344##decrement counter (x)
$C345##If Register X != 0
$C347#bra_C347_loop#[$2300-$23BF] or [$2700-$27BF] in ram_0012
$C34A##increment counter (y)
$C34B##--NO-COMMENT--
$C34D##If Register Y < 0xC0
$C34F##put a tile value
$C351#bra_C351_loop#[$23C0-$23FF] or [$27C0-$27FF] in 0x00
$C354##increment counter (y)
$C355##If Register Y != 0
$C357##--NO-COMMENT--
$C358#sub_C358_clear_OAM#set loop counter
$C35A##set a sprite position
$C35C##an assigned value
$C35E#bra_C35E_loop#OAM in 0F XX XX XX 0F XX XX XX 0F XX XX XX 0F ...
$C361##[0x06B7-0x06F6] in 0xF0
$C364##next a sprite position
$C365##To 2nd sprite data byte
$C366##To 3rd sprite data byte
$C367##To 4th sprite data byte
$C368##To 1st next sprite data byte
$C369##If Register X != 0
$C36B##Store 0x00
$C36D##Store 0x00
$C370##--NO-COMMENT--
$C371#loc_C371_update_palette#--NO-COMMENT--
$C373##--NO-COMMENT--
$C376##--NO-COMMENT--
$C378##PPU address is 0x3F00
$C37B##set loop counter (y=0)
$C37C#bra_C37C_loop#--NO-COMMENT--
$C37F##--NO-COMMENT--
$C382##--NO-COMMENT--
$C385##--NO-COMMENT--
$C388##--NO-COMMENT--
$C38B##--NO-COMMENT--
$C38E##--NO-COMMENT--
$C391##--NO-COMMENT--
$C394##--NO-COMMENT--
$C397##--NO-COMMENT--
$C39A##--NO-COMMENT--
$C39D##--NO-COMMENT--
$C3A0##--NO-COMMENT--
$C3A3##--NO-COMMENT--
$C3A6##--NO-COMMENT--
$C3A9##--NO-COMMENT--
$C3AC##--NO-COMMENT--
$C3AD##--NO-COMMENT--
$C3AE##increment 8
$C3B0##--NO-COMMENT--
$C3B1##--NO-COMMENT--
$C3B3##If Register Y < 0x20 (a loop condition)
$C3B5##--NO-COMMENT--
$C3B7##--NO-COMMENT--
$C3BA##--NO-COMMENT--
$C3BC##--NO-COMMENT--
$C3BF##--NO-COMMENT--
$C3C2##see https://www.nesdev.org/wiki/PPU_registers#Palette_corruption
$C3C5##--NO-COMMENT--
$C3C6#sub_C3C6#
$C3CB##read to reset PPU latch
$C3CE##--NO-COMMENT--
$C3D0##--NO-COMMENT--
$C3D3##--NO-COMMENT--
$C3D5##--NO-COMMENT--
$C3D9#sub_C3D9_increment_nmi_counter#--NO-COMMENT--
$C3DB##--NO-COMMENT--
$C3DC##not used ???
$C3DE##not used ???
$C3E0##not used ???
$C3E1##not used ???
$C3E2##not used ???
$C3E3##not used ???
$C3E4##not used ???
$C3E7##not used ???
$C3E9#bra_C3E9_not_used#not used ???
$C3EC##not used ???
$C3EF##not used ???
$C3F0##not used ???
$C3F1##not used ???
$C3F3##not used ???
$C3F4#sub_C3F4_set_OAM_address#--NO-COMMENT--
$C3F7##--NO-COMMENT--
$C3F9##DMA is used instead
$C3FC##--NO-COMMENT--
$C3FE##set 0x0700-0x07FF
$C401##--NO-COMMENT--
$C402#sub_C402_clear_sound_parts#--NO-COMMENT--
$C404##set the fake index
$C406##set loop counter
$C408##clear
$C40B##clear
$C40E##clear
$C411#bra_C411_loop#--NO-COMMENT--
$C413##--NO-COMMENT--
$C416##--NO-COMMENT--
$C417##--NO-COMMENT--
$C418##CONSTANT: Sound row step
$C41A##--NO-COMMENT--
$C41B##8 iterations for sound row
$C41D##If Register A != 0xA8
$C41F##--NO-COMMENT--
$C420#loc_C420_add_sound_effect#put to cache vCacheRam12
$C422##--NO-COMMENT--
$C423##store x
$C424##--NO-COMMENT--
$C425##store y
$C426##--NO-COMMENT--
$C429##Resolve an address: 0x8000 + ram_0012 * 4
$C42B##--NO-COMMENT--
$C42D##--NO-COMMENT--
$C42E##--NO-COMMENT--
$C430##--NO-COMMENT--
$C431##--NO-COMMENT--
$C433##--NO-COMMENT--
$C435##--NO-COMMENT--
$C436##--NO-COMMENT--
$C438##Low address
$C43A##--NO-COMMENT--
$C43C##High address
$C43E##--NO-COMMENT--
$C440##to 1 byte of 4
$C442##--NO-COMMENT--
$C444##--NO-COMMENT--
$C445##to 2 byte of 4
$C446##--NO-COMMENT--
$C448##--NO-COMMENT--
$C44B##to 3 byte of 4
$C44C##--NO-COMMENT--
$C44E##--NO-COMMENT--
$C451##to 4 byte of 4
$C452##--NO-COMMENT--
$C454##--NO-COMMENT--
$C45C##--NO-COMMENT--
$C45E##--NO-COMMENT--
$C461##--NO-COMMENT--
$C464##switch vBankData (PRG) in 0x8000-09FFF
$C467##--NO-COMMENT--
$C468##retrieve y
$C469##--NO-COMMENT--
$C46A##retrieve x
$C46B##--NO-COMMENT--
$C46C#sub_C46C_simulate_presses_in_demo#--NO-COMMENT--
$C46E##Store for the double click protection
$C470##--NO-COMMENT--
$C472##Branch If in game
$C474##--NO-COMMENT--
$C477##--NO-COMMENT--
$C479##If vDemoBtnPrsdCounter != 0x00
$C47B##If vMenuDemoIndex == 0x00 then we put the garbage
$C47D##--NO-COMMENT--
$C47E##--NO-COMMENT--
$C47F##*2, because the addresses have 2 bytes
$C480##--NO-COMMENT--
$C481##--NO-COMMENT--
$C484##Low address
$C486##--NO-COMMENT--
$C489##High address
$C48B##restore the table index
$C48D##--NO-COMMENT--
$C48F##--NO-COMMENT--
$C491##increment the table index (to 2 byte)
$C492##--NO-COMMENT--
$C494##--NO-COMMENT--
$C496##increment the table index (to 1 byte)
$C497##store  the table index
$C499#bra_C499_skip#decrement a counter
$C49B##--NO-COMMENT--
$C49D##--NO-COMMENT--
$C49F##Branch if v_low_counter does multiple of 16
$C4A1##--NO-COMMENT--
$C4A3##addes a shot every 16th frame unless otherwise specified
$C4A5##--NO-COMMENT--
$C4A7#sub_C4A7_read_io_controller#--NO-COMMENT--
$C4A9##store a last button state (player1)
$C4AB##--NO-COMMENT--
$C4AD##store a last button state (player2)
$C4AF##--NO-COMMENT--
$C4B1##Writes to instruct both controllers to start recording the current states of all pressed buttons)
$C4B4##0x01 -> 0x00
$C4B5##Writes to stop recording button states so they can be read out
$C4B8##The count of the buttons
$C4BA#bra_C4BA_loop#--NO-COMMENT--
$C4BD##--NO-COMMENT--
$C4BF##--NO-COMMENT--
$C4C1##--NO-COMMENT--
$C4C3##--NO-COMMENT--
$C4C6##--NO-COMMENT--
$C4C8##--NO-COMMENT--
$C4CA##Standard Read for 2 Controllers and Famicom (https://www.nesdev.org/wiki/Controller_reading_code)
$C4CC##decrement loop counter
$C4CD##If Register X != 0
$C4CF##--NO-COMMENT--
$C4D0#bra_C4D0_update_btn_pressed#--NO-COMMENT--
$C4D3##--NO-COMMENT--
$C4D5##--NO-COMMENT--
$C4D7##--NO-COMMENT--
$C4D8#sub_C4D8_selectMessagesChrBanks#--NO-COMMENT--
$C4DB##--NO-COMMENT--
$C4DD##--NO-COMMENT--
$C4DE##Branch if no exist 'A screen with the message'
$C4E0##--NO-COMMENT--
$C4E3##--NO-COMMENT--
$C4E5##--NO-COMMENT--
$C4E8##switch 2 Kb CHR-bank (#XX) in $0800-$0FFF
$C4EB##--NO-COMMENT--
$C4EC##--NO-COMMENT--
$C4EE##--NO-COMMENT--
$C4F1##switch 2 Kb CHR-bank (#38) in $0000-$07FF
$C4F4##--NO-COMMENT--
$C4F5#sub_C4F5_selectAllChrBanks#set loop counter
$C4F7#bra_C4F7_loop#--NO-COMMENT--
$C4FA##--NO-COMMENT--
$C4FD##--NO-COMMENT--
$C500##decrements loop counter
$C501##If Register X >= 0
$C503#bra_C503_RTS#--NO-COMMENT--
$C504#sub_C504_switch_prg_8000#--NO-COMMENT--
$C506##store A
$C507##--NO-COMMENT--
$C50A##a new bank data
$C50B##--NO-COMMENT--
$C50D##--NO-COMMENT--
$C510##switch vBankData (PRG) in 0x8000-09FFF
$C513##--NO-COMMENT--
$C516##retrieve A ($C506)
$C517##--NO-COMMENT--
$C519##--NO-COMMENT--
$C51B##--NO-COMMENT--
$C51D##--NO-COMMENT--
$C51E#sub_C51E_update_ppu_and_screen#--NO-COMMENT--
$C521##--NO-COMMENT--
$C524##--NO-COMMENT--
$C527##CONSTANT - Generate an NMI at the start of the vblank + Background pattern table address: $1000
$C529##--NO-COMMENT--
$C52B##--NO-COMMENT--
$C52E##Read PPU status to reset the high/low latch
$C531##--NO-COMMENT--
$C533##write X scroll-position <~ 0x00
$C536##write Y scroll-position <~ 0x00
$C539##--NO-COMMENT--
$C53C#sub_C53C_resolve_start_status#--NO-COMMENT--
$C53E##If Register A != 0x00 (the message is typing)
$C540##--NO-COMMENT--
$C542##A time before message is shown
$C544##If Register A != 0x40
$C546##0 + 1 = 1
$C548##--NO-COMMENT--
$C54A##--NO-COMMENT--
$C54B##put vMenuDemoIndex + 1 as a message number
$C54C##--NO-COMMENT--
$C54F#bra_C54F_skip#CONSTANT - The starting cutscene, during typing the message
$C551##If Register A == 0x01
$C553##A time between the message and menu
$C555##--NO-COMMENT--
$C557##If Register A > counter
$C559##CONSTANT - Show the menu
$C55B##--NO-COMMENT--
$C55D##--NO-COMMENT--
$C55E#bra_C55E_skip#0x00 or 0x80
$C560##If vMessageInProgress != 0x00
$C562##clear
$C564##clear
$C566##1 + 1 = 2
$C568#bra_C568_RTS#--NO-COMMENT--
$C569#sub_C569_main_menu_subroutine#Switches a cutscene to a main title screen
$C56B##--NO-COMMENT--
$C56E##Go to the branch If the button 'Start' isn't pressed
$C570##Activates the character selection (see $B984, bank 06, page 2)
$C572#bra_C572_skip#--NO-COMMENT--
$C575##--NO-COMMENT--
$C578##--NO-COMMENT--
$C57A##If vHighCounter == 0x00
$C57C##--NO-COMMENT--
$C57E##If vHighCounter == 0x02
$C580##--NO-COMMENT--
$C582##--NO-COMMENT--
$C584##If vLowCounter < 0xE0
$C586##If vLowCounter == 0xE0
$C588##relative address = 0x9D7B in 0x12-0x13 (1st frame)
$C58A##--NO-COMMENT--
$C58C##If vLowCounter < 0xE4
$C58E##If vLowCounter == 0xE4
$C590##relative address = 0x9D9B in 0x12-0x13 (2nd frame)
$C592##--NO-COMMENT--
$C594##If vLowCounter == 0xE8
$C596##relative address = 0x9DBE in 0x12-0x13 (3rd frame)
$C598##--NO-COMMENT--
$C59A##If vLowCounter == 0xEC
$C59C##relative address = 0x9DD9 in 0x12-0x13 (4th frame)
$C59E##--NO-COMMENT--
$C5A0##If vLowCounter == 0xF0
$C5A2##relative address = 0x9E00 in 0x12-0x13 (5th frame)
$C5A4##--NO-COMMENT--
$C5A6##If vLowCounter != 0xF4
$C5A8#bra_C5A8_prepare_for_gunshot#--NO-COMMENT--
$C5AB##--NO-COMMENT--
$C5AD##--NO-COMMENT--
$C5AF##clear vPpuAddrDataCache (34 bytes)
$C5B2##--NO-COMMENT--
$C5B5##Low address (see $8000,Y in bank 04, page 1)
$C5B7##--NO-COMMENT--
$C5BA##High address
$C5BC##set loop counter
$C5BE#bra_C5BE_loop#load a data cache
$C5C0##--NO-COMMENT--
$C5C2##If Register A is 0xFF
$C5C4##put a data cache
$C5C7##increments y
$C5C8##If Register X != 0
$C5CA#bra_C5CA_RTS#--NO-COMMENT--
$C5CB#bra_C5CB_sounds_of_a_gunshot#sound of a gunshot #1
$C5CD##--NO-COMMENT--
$C5D0##sound of a gunshot #2
$C5D2##--NO-COMMENT--
$C5D5#sub_C5D5_display_menu_gun#--NO-COMMENT--
$C5D8##Branch If a last played level is 0.
$C5DA##--NO-COMMENT--
$C5DC##If vMainMenuGunYPos = 0x00 (it isn't set)
$C5DE##--NO-COMMENT--
$C5E0##--NO-COMMENT--
$C5E2##If the button 'Up' or 'Down' isn't pressed
$C5E4##CONSTANT - The 'Start' position
$C5E6##--NO-COMMENT--
$C5E8##If the button 'Down' is pressed
$C5EA##CONSTANT - The 'Continue' position
$C5EC#bra_C5EC_change#changes position by pressing a key
$C5EE#bra_C5EE_render#--NO-COMMENT--
$C5F0##Y-position <~ 0x8F or 0x9F
$C5F3##Y-position <~ 0x8F or 0x9F
$C5F6##--NO-COMMENT--
$C5F8##Tile number #1 <~ 0x62
$C5FB##--NO-COMMENT--
$C5FD##Tile number #2 <~ 0x63
$C600##--NO-COMMENT--
$C602##The attributes <~ 0x00
$C605##The attributes <~ 0x00
$C608##--NO-COMMENT--
$C60A##X-position <~ 0x50
$C60D##--NO-COMMENT--
$C60E##--NO-COMMENT--
$C610##X-position <~ 0x58
$C613#bra_C613_RTS#--NO-COMMENT--
$C614#tbl_C614_PPU_address#Name table address, Lupin, 1 message row
$C616##Name table address, Lupin, 2 message row
$C618##Name table address, Lupin, 3 message row
$C61A##Name table address, Lupin, 4 message row
$C61C##Name table address, Jigen, 1 message row
$C61E##Name table address, Jigen, 2 message row
$C620##Name table address, Jigen, 3 message row
$C622##Name table address, Jigen, 4 message row
$C624##Name table address, Goemon, 1 message row
$C626##Name table address, Goemon, 2 message row
$C628##Name table address, Goemon, 3 message row
$C62A##Name table address, Goemon, 4 message row
$C62C#tbl_C62C_y_position_characters#Lupin
$C62D##Jigen
$C62E##Goemon
$C62F#sub_C62F_init_character_select#--NO-COMMENT--
$C632##--NO-COMMENT--
$C635##--NO-COMMENT--
$C638##--NO-COMMENT--
$C63B##set loop counter
$C63D#bra_C63D_loop#--NO-COMMENT--
$C640##set CHR ROMs
$C643##decrements loop counter
$C644##If Register X < 0xF0
$C646##set loop counter
$C648#bra_C648_repeat#--NO-COMMENT--
$C64B##4 bg palette + 2 sprite palette (for a gun)
$C64E##decrements loop counter
$C64F##If Register X < 0xF0
$C651##--NO-COMMENT--
$C652#sub_C652_display_character_portraits#--NO-COMMENT--
$C654##--NO-COMMENT--
$C656##--NO-COMMENT--
$C658##($0012-$0013) -> $816B
$C65A##--NO-COMMENT--
$C65C##set loop counter
$C65E#bra_C65E_loop#prepares an input parameter
$C660##--NO-COMMENT--
$C663##decrement loop counter
$C665##If Register X < 0xF0
$C667##--NO-COMMENT--
$C668#bra_C668_loop#counter as parameter
$C66A##--NO-COMMENT--
$C66D##decrement $0000
$C66F##In $0000 >= 0x00 && $0000 < 0xF0
$C671##--NO-COMMENT--
$C672#sub_C672_wait_character_select#--NO-COMMENT--
$C675##--NO-COMMENT--
$C677##Low address
$C679##--NO-COMMENT--
$C67B##High address (0x8139 in the bank 04_1)
$C67D##--NO-COMMENT--
$C67F##set loop counter
$C681##--NO-COMMENT--
$C684##--NO-COMMENT--
$C687##--NO-COMMENT--
$C68A##CONSTANT - the number of rows containing message symbols
$C68C##set loop counter
$C68E#bra_C68E_loop#
$C691##decrement loop counter
$C693##If vTempRowNumber1A >= 0x00
$C695##--NO-COMMENT--
$C697##put active
$C699##clear
$C69C##empty cache
$C69F##reset
$C6A1##clear Register X
$C6A2##--NO-COMMENT--
$C6A4##--NO-COMMENT--
$C6A5##--NO-COMMENT--
$C6A6#bra_C6A6_loop#--NO-COMMENT--
$C6A7##--NO-COMMENT--
$C6A8##the current character isn't fell
$C6AA##--NO-COMMENT--
$C6AB##If Register X != 0 (there should be no more than 3 iterations)
$C6AD#bra_C6AD_skip#prepare an input parameter
$C6AF##--NO-COMMENT--
$C6B2##CONSTANT - Select the character
$C6B4##--NO-COMMENT--
$C6B6##--NO-COMMENT--
$C6B9#bra_C6B9_wait#--NO-COMMENT--
$C6BB##Here we wait for the player to select a character.
$C6BD#bra_C6BD_wait#--NO-COMMENT--
$C6BF##Here we wait for the counter to reset (the flashing gun animation will be performed)
$C6C1##--NO-COMMENT--
$C6C4##--NO-COMMENT--
$C6C7#loc_C6C7_update_room_with_message#CHR-bank (a number)
$C6C9##clear vSharedGameStatus
$C6CA##--NO-COMMENT--
$C6CC##CONSTANT - room with NPC in level 1
$C6CE##If vNoSubLevel < 0x1A
$C6D0##CONSTANT - boss of level 1, 0x1E - room with NPC in level 4
$C6D2##If vNoSubLevel >= 0x1F
$C6D4##CHR-bank (a number)
$C6D6##For vSharedGameStatus to set 'A screen with the message'
$C6D7#bra_C6D7_skip#--NO-COMMENT--
$C6DA##--NO-COMMENT--
$C6DC##--NO-COMMENT--
$C6DD#sub_C6DD_render_row#--NO-COMMENT--
$C6DF##If vReasonCharacterChange == 'no reason'
$C6E8#bra_C6E8#
$C6FC#bra_C6FC#--NO-COMMENT--
$C6FE##If vReasonCharacterChange != 'the radio was using'
$C700##--NO-COMMENT--
$C702##--NO-COMMENT--
$C704##$0000 <- the current selected character
$C712#bra_C712#
$C71F#loc_C71F#
$C72C#bra_C72C_skip#--NO-COMMENT--
$C72E##--NO-COMMENT--
$C730##Branch If vTempRowNumber1A = 0x02, 0x03, 0x06, 0x07, 0x0A, 0x0B
$C732##For 0x08, 0x09 - Lupin
$C735##If character is fell or arrested
$C737##--NO-COMMENT--
$C738#bra_C738_internal_render_row#--NO-COMMENT--
$C73A##--NO-COMMENT--
$C73B##--NO-COMMENT--
$C73C##no * 8
$C73D##--NO-COMMENT--
$C73F##--NO-COMMENT--
$C740##--NO-COMMENT--
$C741##--NO-COMMENT--
$C743##--NO-COMMENT--
$C744##--NO-COMMENT--
$C746##--NO-COMMENT--
$C747##--NO-COMMENT--
$C749##Prepares the index by the row and the number of level
$C74A##--NO-COMMENT--
$C74D##low address
$C74F##--NO-COMMENT--
$C752##high address
$C754#loc_C754_render_02_03#set loop counter
$C756#bra_C756_loop#--NO-COMMENT--
$C758##fill a buffer for rendering
$C75B##--NO-COMMENT--
$C75C##If Register Y >= 0
$C75E##--NO-COMMENT--
$C760##shift, because PPU address contains 2 bytes
$C761##--NO-COMMENT--
$C762##--NO-COMMENT--
$C765##low PPU address
$C767##--NO-COMMENT--
$C76A##high PPU address
$C76C##--NO-COMMENT--
$C76E##low address
$C770##--NO-COMMENT--
$C772##high address ($0633)
$C774##--NO-COMMENT--
$C776##the number of the tiles
$C778##--NO-COMMENT--
$C77B#sub_C77B_can_character_play#--NO-COMMENT--
$C77D##--NO-COMMENT--
$C77E##--NO-COMMENT--
$C77F##set loop counter (vTempRowNumber1A / 4)
$C780##--NO-COMMENT--
$C782##the out parameter
$C784#bra_C784_skip#--NO-COMMENT--
$C785##--NO-COMMENT--
$C786##decrements loop counter
$C787##If Register X >= 0
$C789##--NO-COMMENT--
$C78B##--NO-COMMENT--
$C78D##--NO-COMMENT--
$C78E#sub_C78E_select_character_subroutine#--NO-COMMENT--
$C791##If test mode is disable
$C7A2##The enemies don't damage
$C7A6#bra_C7A6_skip#--NO-COMMENT--
$C7A8##If vCharacterSelectionCounter != 0x00
$C7AA##Selects a character before start a level
$C7AC##--NO-COMMENT--
$C7AF##Go to the branch If the buttons 'A' or 'B' aren't pressed
$C7B1##--NO-COMMENT--
$C7B3##Initializes a counter
$C7B5#bra_C7B5_skip#Decrement a counter
$C7B7##--NO-COMMENT--
$C7BA#bra_C7BA_skip#--NO-COMMENT--
$C7BC##put an old value
$C7BE##--NO-COMMENT--
$C7C0##--NO-COMMENT--
$C7C3##If the buttons 'Up' or 'Down' aren't pressed
$C7C5##store a
$C7C6##CONSTANT - Sound 'switch a character'
$C7C8##--NO-COMMENT--
$C7CB##restore a ($C7C5)
$C7CC##--NO-COMMENT--
$C7CE##If the button 'Up' isn't pressed
$C7D0#bra_C7D0_prev#temporarily previous the character
$C7D2##if vCopyIndexSelectableChr < 0 (i.e. >= 0xF0), only display sprites
$C7D4##--NO-COMMENT--
$C7D7##If the current character isn't playable
$C7D9##Always true
$C7DB#bra_C7DB_next#temporarily next the character
$C7DD##--NO-COMMENT--
$C7DF##--NO-COMMENT--
$C7E1##if vCopyIndexSelectableChr >= 0x03, only display sprites
$C7E3##--NO-COMMENT--
$C7E6##If the current character isn't playable
$C7E8#bra_C7E8_accept#--NO-COMMENT--
$C7EA##set a new value
$C7EC##--NO-COMMENT--
$C7EF#loc_C7EF_sprite_magic_in_select_character#--NO-COMMENT--
$C7F1##CONSTANT - a gun display frequency (in select character)
$C7F3##If it isn't displayed
$C7F5##0x00 - Lupin, 0x01 - Jigen, 0x02 - Goemon
$C7F7##--NO-COMMENT--
$C7FA##~> sprite_magic1 (Y pos)
$C7FC##~> sprite_magic4 (X pos)
$C7FE##tile 'Gun'
$C800##--NO-COMMENT--
$C803#bra_C803_skip#Y-position for Lupin
$C805##--NO-COMMENT--
$C807##--NO-COMMENT--
$C809##accumulator_shift_right_by_2
$C80A##--NO-COMMENT--
$C80B##--NO-COMMENT--
$C80E##Y-position for Jigen
$C810##--NO-COMMENT--
$C812##--NO-COMMENT--
$C814##--NO-COMMENT--
$C817##--NO-COMMENT--
$C81A##Y-position for Goemon
$C81C##--NO-COMMENT--
$C81E##--NO-COMMENT--
$C820##--NO-COMMENT--
$C823##+ 1 shift = shift right by 6
$C824#sub_C824_character_sprite#tile 'Handcuffs'
$C826##CONSTANT - Did the character fall or get arrested?
$C828##--NO-COMMENT--
$C82A##CONSTANT - Did the character fall?
$C82C##--NO-COMMENT--
$C82E##tile 'Prison bars'
$C830#bra_C830_handcuffs_sprite_magic#~> sprite_magic4 (X pos)
$C832#sub_C832_add_sprite_magic#--NO-COMMENT--
$C834##--NO-COMMENT--
$C835##--NO-COMMENT--
$C836##~> sprite_magic2 (see v_sprite_magic2)
$C838##--NO-COMMENT--
$C83A##~> sprite_magic3 (see v_sprite_magic3)
$C83C##--NO-COMMENT--
$C83E##--NO-COMMENT--
$C841#sub_C841_is_playable_character#prepare an input parameter
$C843##--NO-COMMENT--
$C846##CONSTANT - Fallen status
$C848#bra_C848_RTS#--NO-COMMENT--
$C849#sub_C849_get_character_status#--NO-COMMENT--
$C84B#bra_C84B_loop#--NO-COMMENT--
$C84C##--NO-COMMENT--
$C84D##decrement loop counter
$C84E##If Register X < 0xF0
$C850##--NO-COMMENT--
$C852##--NO-COMMENT--
$C853#sub_C853_activate_selectable_character#--NO-COMMENT--
$C855##CONSTANT - see info 'vChrLiveStatus'
$C857##--NO-COMMENT--
$C859##--NO-COMMENT--
$C85B##--NO-COMMENT--
$C85C#sub_C85C_display_character_portrait#--NO-COMMENT--
$C85F##--NO-COMMENT--
$C861##set loop counter
$C863#bra_C863_loop#--NO-COMMENT--
$C866##--NO-COMMENT--
$C868##--NO-COMMENT--
$C869##--NO-COMMENT--
$C86B##shifts PPU address for next row
$C86D##--NO-COMMENT--
$C86F##--NO-COMMENT--
$C871##shift high address by Carry flag
$C873##--NO-COMMENT--
$C875##--NO-COMMENT--
$C876##--NO-COMMENT--
$C878##shifts ROM-address value by count of the bytes ($0018 contains 0x03)
$C87A##--NO-COMMENT--
$C87C##--NO-COMMENT--
$C87E##shift high ROM-address value by Carry flag
$C880##decrement loop counter
$C882##If $000F < 0xF0
$C884##--NO-COMMENT--
$C885#sub_C885_try_interrupt_mode#--NO-COMMENT--
$C887##Branch If cutscenes aren't used
$C889##--NO-COMMENT--
$C88B##If vLowCutsceneCounter != 0x00
$C88D##--NO-COMMENT--
$C88F##If vHighCutsceneCounter == 0x00
$C891##--NO-COMMENT--
$C893#bra_C893_skip#--NO-COMMENT--
$C895##--NO-COMMENT--
$C897##Go to the branch If the button 'Start' doesn't press
$C899##--NO-COMMENT--
$C89B##avoid looping
$C89D##If v_player1_btn_pressed = v_last_p1_btn_pressed
$C89F##CONSTANT - Cutscenes aren't used
$C8A1##--NO-COMMENT--
$C8A3##--NO-COMMENT--
$C8A5##clears the stack completely
$C8A6##--NO-COMMENT--
$C8A9#bra_C8A9_try_change_pause#--NO-COMMENT--
$C8AB##--NO-COMMENT--
$C8AE##Branch If the button 'Start' doesn't press
$C8B0##--NO-COMMENT--
$C8B2##Branch If pause is activated
$C8B4##CONSTANT - pause
$C8B6##--NO-COMMENT--
$C8B8##--NO-COMMENT--
$C8BA##CONSTANT - Pause in the game
$C8BC##--NO-COMMENT--
$C8BE##--NO-COMMENT--
$C8C1##sound of pause
$C8C3##--NO-COMMENT--
$C8C6#bra_C8C6_turn_pause_off#--NO-COMMENT--
$C8C8##CONSTANT - no pause
$C8CA##--NO-COMMENT--
$C8CC##--NO-COMMENT--
$C8CE##Reset a flag 'Pause in the game'
$C8D0##--NO-COMMENT--
$C8D3#bra_C8D3_RTS#--NO-COMMENT--
$C8D4#sub_C8D4_check_Yoshikawa#set loop counter
$C8D6#bra_C8D6_loop#--NO-COMMENT--
$C8D9##--NO-COMMENT--
$C8DC##branch If [0x0100-0x0108] isn't Yoshikawa
$C8DE##decrement x
$C8DF##In Register X >= 0x00 && X < 0xF0
$C8E1##--NO-COMMENT--
$C8E2#tbl_C8E2_symbols#Y
$C8E3##o
$C8E4##s
$C8E5##h
$C8E6##i
$C8E7##k
$C8E8##a
$C8E9##w
$C8EA##a
$C8EB##--NO-COMMENT--
$C8EC#bra_C8EC_skip#set loop counter
$C8EE#bra_C8EE_loop#--NO-COMMENT--
$C8F1##set Yoshikawa
$C8F4##decrement x
$C8F5##In Register X >= 0x00 && X < 0xF0
$C8F7##CONSTANT - The menu
$C8F9##--NO-COMMENT--
$C8FB##next [0x0099-0x009F] in 0
$C8FD##--NO-COMMENT--
$C900##--NO-COMMENT--
$C902##--NO-COMMENT--
$C904#sub_C904_clear_score#next [0x00A0-0x00A6] in 0
$C906##--NO-COMMENT--
$C909##--NO-COMMENT--
$C90B##--NO-COMMENT--
$C90D##--NO-COMMENT--
$C90F##next [0x0056-0x005C] in 0, i.e. vScore = 0
$C911#sub_C911_memset_zero#set loop counter
$C913##set loop value
$C915#bra_C915_loop#--NO-COMMENT--
$C917##--NO-COMMENT--
$C918##decrement y
$C919##If Register Y != 0
$C91B##--NO-COMMENT--
$C91C#sub_C91C_display_menu_score#--NO-COMMENT--
$C91E##$0008 <~ 0x80
$C920##--NO-COMMENT--
$C922##$0009 <~ 0x80
$C924##--NO-COMMENT--
$C926##$0007 <~ 0x00
$C928##set loop counter
$C92A#bra_C92A_loop#load a score symbol
$C92C##If symbol == '0'
$C92E##marks that it's the first non-null symbol
$C930#bra_C930_skip#--NO-COMMENT--
$C932##Branch If need display a symbol
$C934##--NO-COMMENT--
$C936##Branch If Register Y < 0x03 (the last 2 symbol are displayed in any case)
$C938##0x80 + 0x80 -> 0x00, the tile number for blank
$C93A#bra_C93A_skip#--NO-COMMENT--
$C93B##0x80 - '0', 0x81 - '1', 0x82 - '2', 0x83 - '3', ... , 0x89 - '9'
$C93D##--NO-COMMENT--
$C940##next a score symbol
$C941##decrement y
$C942##If Register Y != 0
$C944##--NO-COMMENT--
$C945#bra_C945#
$C947#loc_C947#
$C94A##Branch If mode=cutscene
$C960#sub_C960#
$C963##Branch If mode=cutscene
$C977#bra_C977#
$C979#bra_C979#
$C980#bra_C980#
$C985#loc_C985#
$C991#bra_C991#
$C998#bra_C998#
$C9A7#bra_C9A7#
$C9B0#bra_C9B0#
$C9B2#bra_C9B2_RTS#
$C9B3#sub_C9B3_prepare_inventory_ppu_cache#--NO-COMMENT--
$C9B5##Branch If the render isn't activated
$C9B7##--NO-COMMENT--
$C9B9##--NO-COMMENT--
$C9BA##Branch if 'A screen with the message'
$C9BC##--NO-COMMENT--
$C9BE##--NO-COMMENT--
$C9C0##Branch every 2 times after 2
$C9C2##--NO-COMMENT--
$C9C5#bra_C9C5_skip#the number of PpuAddrDataCache bytes
$C9C7##--NO-COMMENT--
$C9CA##--NO-COMMENT--
$C9CD##a count
$C9CF##--NO-COMMENT--
$C9D2##a high ppu address
$C9D4##--NO-COMMENT--
$C9D7##a low ppu address
$C9D9##--NO-COMMENT--
$C9DC##--NO-COMMENT--
$C9DE##fact of displaying some digit
$C9E0##set loop counter
$C9E2#bra_C9E2_loop#--NO-COMMENT--
$C9E4##Branch If Register A != 0x00
$C9E6##--NO-COMMENT--
$C9E8##Branch If ram_0007 == 0%1XXXXXXX
$C9EA##show 00 in score (3 - 1 = 2 digits)
$C9EC##Branch If Register Y >= 0x03
$C9EE#bra_C9EE_skip#--NO-COMMENT--
$C9F0##0x40-0x49 are tiles for '0'-'9' digits
$C9F2##--NO-COMMENT--
$C9F5#bra_C9F5_skip#next a score position
$C9F6##decrement counter y
$C9F7##Branch If Register Y != 0
$C9F9##set loop counter
$C9FB#bra_C9FB_loop#--NO-COMMENT--
$C9FE##Branch If a item is missing
$CA00##0x40-0x49 are tiles for '0'-'9' digits
$CA02##--NO-COMMENT--
$CA05##caches only the number of the items (the digits themselves)
$CA08#bra_CA08_skip#increment counter x
$CA09##--NO-COMMENT--
$CA0B##Branch If Register X != 0x09
$CA0D##--NO-COMMENT--
$CA0F##mark for the end of the cache
$CA12##--NO-COMMENT--
$CA13#sub_CA13_score_or_pause#a count
$CA15##--NO-COMMENT--
$CA18##a high ppu address
$CA1A##--NO-COMMENT--
$CA1D##a low ppu address
$CA1F##--NO-COMMENT--
$CA22##--NO-COMMENT--
$CA24##--NO-COMMENT--
$CA26##--NO-COMMENT--
$CA28##Branch if no pause
$CA2A##changes the index in the table
$CA2C##--NO-COMMENT--
$CA2E##--NO-COMMENT--
$CA30##Branch If v_low_counter doesn't division without remainder by 8 and 16
$CA32#bra_CA32_loop#--NO-COMMENT--
$CA35##tile numbers
$CA38##--NO-COMMENT--
$CA39##increment x
$CA3A##--NO-COMMENT--
$CA3C##If Register X != 0x05
$CA3E#bra_CA3E_RTS#--NO-COMMENT--
$CA3F#sub_CA3F_clear_inventory_panel#an assigned value (Tile number)
$CA41#sub_CA41_fill_ppu_addr_data_cache#--NO-COMMENT--
$CA44##decrement x
$CA45##In Register X >= 0x00 && X < 0xF0
$CA47##--NO-COMMENT--
$CA48#loc_CA48_prepare_icon_items#set loop counter
$CA4A#bra_CA4A_loop#--NO-COMMENT--
$CA4D##If Register A == 0x00
$CA4F##--NO-COMMENT--
$CA52#bra_CA52_skip#decrement x
$CA53##Branch If Register X < 0xF0
$CA55##the number of PpuAddrDataCache bytes
$CA57##--NO-COMMENT--
$CA5A##--NO-COMMENT--
$CA5C##set loop counter
$CA5E#bra_CA5E_loop#--NO-COMMENT--
$CA61##--NO-COMMENT--
$CA64##--NO-COMMENT--
$CA67##--NO-COMMENT--
$CA6A##--NO-COMMENT--
$CA6D##--NO-COMMENT--
$CA70##--NO-COMMENT--
$CA73##--NO-COMMENT--
$CA76##--NO-COMMENT--
$CA77##--NO-COMMENT--
$CA78##--NO-COMMENT--
$CA79##increnemnt x for the table
$CA7A##increnemnt counter y
$CA7B##--NO-COMMENT--
$CA7D##If Register Y != 0x03
$CA7F##--NO-COMMENT--
$CA81##set loop counter
$CA83#bra_CA83_loop#--NO-COMMENT--
$CA85##--NO-COMMENT--
$CA88##--NO-COMMENT--
$CA8A##If BlinkTime is 0%XXXX1XXX (every 8 after 8)
$CA8C##--NO-COMMENT--
$CA8F##Branch If item is missing
$CA91##--NO-COMMENT--
$CA94##Branch If BlinkTime is time out
$CA96##--NO-COMMENT--
$CA98##If BlinkTime isn't 0%XXXX1XXX (every 8 after 8, never true)
$CA9A#bra_CA9A_put_cache#--NO-COMMENT--
$CA9B##--NO-COMMENT--
$CA9C##--NO-COMMENT--
$CA9D##Y = 4 * X (offset by 4 bytes)
$CA9E##offset in vPpuAddrDataCache
$CAA1##--NO-COMMENT--
$CAA2##--NO-COMMENT--
$CAA5##ppu data (tile number)
$CAA8##--NO-COMMENT--
$CAAB##ppu data (tile number)
$CAAE##--NO-COMMENT--
$CAB1##ppu data (tile number)
$CAB4##--NO-COMMENT--
$CAB7##ppu data (tile number)
$CABA#bra_CABA_skip#decrement CA48_counter
$CABC##Branch If decrement CA48 < 0xF0
$CABE##--NO-COMMENT--
$CAC0##mark for the end of the cache
$CAC3##--NO-COMMENT--
$CAC4#tbl_CAC4_tiles#S
$CAC5##C
$CAC6##O
$CAC7##R
$CAC8##E
$CAC9##P
$CACA##A
$CACB##U
$CACC##S
$CACD##E
$CACE#tbl_CACE_offset#Radio
$CACF##Bomb
$CAD0##Artillery Rifle
$CAD1##Jet-pack
$CAD2##Infrared Goggles
$CAD3##Breathing apparatus
$CAD4##Helium balloon
$CAD5##Bullet proof vest
$CAD6##Ruby ring
$CAD7#tbl_CAD7_offset#
$CAE0#tbl_CAE0_attrs#count
$CAE1##count
$CAE2##count
$CAE3##count
$CAE4##ppu high address
$CAE5##ppu high address
$CAE6##ppu high address
$CAE7##ppu high address
$CAE8##ppu low address
$CAE9##ppu low address
$CAEA##ppu low address
$CAEB##ppu low address
$CAEC#tbl_CAEC_items#Radio
$CAF0##Bomb
$CAF4##Artillery Rifle
$CAF8##Jet-pack
$CAFC##Infrared Goggles
$CB00##Breathing apparatus
$CB04##Helium balloon
$CB08##Bullet proof vest
$CB0C##Ruby ring
$CB10#tbl_CB10#
$CB20#tbl_CB20#
$CB29#sub_CB29#
$CB36#bra_CB36#
$CB37#bra_CB37_RTS#
$CB38#sub_CB38#
$CB5F#bra_CB5F#
$CB64#bra_CB64#
$CB70#bra_CB70#
$CB77#bra_CB77#
$CB80#bra_CB80#
$CB8C#sub_CB8C#--NO-COMMENT--
$CB8E##If 'the character is moving in the water'
$CB90##--NO-COMMENT--
$CB92##--NO-COMMENT--
$CB94##If the character is Lupin
$CBA3#bra_CBA3_skip#--NO-COMMENT--
$CBA6##If the weapons are not exist
$CBB5#bra_CBB5#
$CBD8#bra_CBD8_RTS#--NO-COMMENT--
$CBD9#sub_CBD9#--NO-COMMENT--
$CBDC##If the weapons are not exist
$CBDE##If the weapon is activated
$CC06#sub_CC06#
$CC14#bra_CC14_loop#
$CC1B#bra_CC1B_skip#
$CC26#bra_CC26_skip#
$CC29#bra_CC29_RTS#
$CC2A#sub_CC2A#
$CC37#bra_CC37#
$CC46#tbl_CC46#
$CC66#bra_CC66#
$CC70#bra_CC70#
$CC7E##If the character is looking to the right
$CC80##2nd row
$CC82#bra_CC82_skip#
$CCC3#bra_CCC3#
$CCCD#bra_CCCD#
$CCDF#loc_CCDF_set_apparatus_counter_old#--NO-COMMENT--
$CCE1##--NO-COMMENT--
$CCE4##prepare an input parameter
$CCE6##--NO-COMMENT--
$CCE9#sub_CCE9_set_apparatus_counter#CONSTANT Hc:Lc = 08:XX - time of the breathing apparatus
$CCEB##--NO-COMMENT--
$CCEE##--NO-COMMENT--
$CCEF#sub_CCEF#
$CD04##CONSTANT Hc:Lc = 08:XX - time of the breathing apparatus
$CD06##--NO-COMMENT--
$CD0D#sub_CD0D#
$CD13#sub_CD13_use_item#Decrement an item
$CD16##Initializing the remaining time
$CD18##--NO-COMMENT--
$CD1B##--NO-COMMENT--
$CD1C#sub_CD1C#
$CD49#loc_CD49#
$CD53#tbl_CD53#a bomb is on the right
$CD59##a bomb is on the left
$CD5F#sub_CD5F#--NO-COMMENT--
$CD61##If goggles are not deactivated
$CD63##--NO-COMMENT--
$CD65##If a high counter != 0x00
$CD67##--NO-COMMENT--
$CD69##If a low counter != 0x00
$CD6B##--NO-COMMENT--
$CD6D##reset infrared goggles activity
$CD6F##--NO-COMMENT--
$CD72#bra_CD72_decrement_counters#--NO-COMMENT--
$CD74##--NO-COMMENT--
$CD75##--NO-COMMENT--
$CD77##decrement low value
$CD79##--NO-COMMENT--
$CD7B##--NO-COMMENT--
$CD7D##decrement high value
$CD7F#bra_CD7F_skip#--NO-COMMENT--
$CD82##If a high counter != 0x00
$CD84##--NO-COMMENT--
$CD87##If a low counter != 0x00
$CD89##--NO-COMMENT--
$CD8B##If the character is moving in the water
$CD8D##If the character is moving on the balloon
$CD8F##--NO-COMMENT--
$CD92##If the weapons are not exist
$CD94##If the weapon isn't activated
$CDAA#bra_CDAA_decrement_counters#--NO-COMMENT--
$CDAC##--NO-COMMENT--
$CDAF##--NO-COMMENT--
$CDB0##--NO-COMMENT--
$CDB2##decrement low value
$CDB5##--NO-COMMENT--
$CDB8##--NO-COMMENT--
$CDBA##decrement high value
$CDBD##--NO-COMMENT--
$CDBE#tbl_CDBE#
$CDD0#bra_CDD0#
$CDDD#bra_CDDD#
$CDED#bra_CDED_RTS#--NO-COMMENT--
$CDEE#sub_CDEE_prepare_activable_items_old#--NO-COMMENT--
$CDF0##--NO-COMMENT--
$CDF3#loc_CDF3_prepare_activable_items#--NO-COMMENT--
$CDF6##--NO-COMMENT--
$CDF8##we make weapon inactive
$CDFB##--NO-COMMENT--
$CDFD##--NO-COMMENT--
$CE00##clear
$CE03##set loop counter
$CE05#bra_CE05_loop#--NO-COMMENT--
$CE08##If some item is exist
$CE0A##decrement loop counter
$CE0B##If Register X < 0xF0
$CE0D##CONSTANT - the weapons are not exist
$CE0F##--NO-COMMENT--
$CE12#bra_CE12_RTS#--NO-COMMENT--
$CE13#sub_CE13_set_sprite_zero_hits#Y-position for message room
$CE15##--NO-COMMENT--
$CE17##--NO-COMMENT--
$CE18##If A screen isn't with the message
$CE1A##Y-position for room without messages
$CE1C#bra_CE1C_skip#set Y-position
$CE1F##a black square
$CE21##set the tile number sprite
$CE24##behind background
$CE26##set the attributes
$CE29##--NO-COMMENT--
$CE2B##set X-position
$CE2E##--NO-COMMENT--
$CE30##--NO-COMMENT--
$CE32##--NO-COMMENT--
$CE33#loc_CE33_add_sprite_magic#--NO-COMMENT--
$CE34##store y
$CE35##--NO-COMMENT--
$CE38##Maximum sprites
$CE3A##If sprite's count == maximum
$CE3C##--NO-COMMENT--
$CE3E##--NO-COMMENT--
$CE41##--NO-COMMENT--
$CE43##--NO-COMMENT--
$CE46##--NO-COMMENT--
$CE48##--NO-COMMENT--
$CE4B##--NO-COMMENT--
$CE4D##--NO-COMMENT--
$CE50##--NO-COMMENT--
$CE51##--NO-COMMENT--
$CE52##--NO-COMMENT--
$CE53##--NO-COMMENT--
$CE54##+= 4
$CE57#bra_CE57_skip#--NO-COMMENT--
$CE58##retrieve y (see CE34)
$CE59##--NO-COMMENT--
$CE5A#loc_CE5A_render_character#--NO-COMMENT--
$CE5C##clear
$CE5E##clear
$CE60##--NO-COMMENT--
$CE62##--NO-COMMENT--
$CE65##--NO-COMMENT--
$CE67##switch bank 05 in 0x8000-0x9FFF
$CE6A##--NO-COMMENT--
$CE6C##store A
$CE6D##--NO-COMMENT--
$CE6F##get the part of the attributes
$CE71##retrieve A ($CE6C)
$CE72##--NO-COMMENT--
$CE73##--NO-COMMENT--
$CE74##get the part of the address
$CE75##--NO-COMMENT--
$CE77##--NO-COMMENT--
$CE79##a high byte address [0x80-0x83]
$CE7B##--NO-COMMENT--
$CE7D##a low byte address
$CE7F##shift by x (x - an input parameter)
$CE80##--NO-COMMENT--
$CE81##--NO-COMMENT--
$CE83##Assinged a high byte address
$CE85##--NO-COMMENT--
$CE86##--NO-COMMENT--
$CE88##Assinged a low byte address
$CE8A##Offset of the entire OAM
$CE8C##--NO-COMMENT--
$CE8E##If the count of the sprites is overflow
$CE90##--NO-COMMENT--
$CE92##get a tile count
$CE94##set loop counter
$CE96##If v_CE5A_counter == 0x00
$CE98##y == 1, the position of first tile-byte
$CE99#bra_CE99_loop#--NO-COMMENT--
$CE9B##clear
$CE9D##1 of 4
$CE9F##If Register A < 0xF0
$CEA1##0x00 -> 0xFF (The position may be negative!)
$CEA3#bra_CEA3_skip#--NO-COMMENT--
$CEA4##--NO-COMMENT--
$CEA6##set Y-position
$CEAD##If Register A != 0x00 (it is an unacceptable sprite)
$CEAF##Changes to the second byte (Tile index number)
$CEB0##2 of 4
$CEB2##set the tile number sprite
$CEB5##Changes to the third byte (Attributes)
$CEB6##3 of 4
$CEB8##add attributes from outside
$CEBA##set the attributes
$CEBD##Changes to the fourth byte (X-position)
$CEBE##--NO-COMMENT--
$CEC0##clear
$CEC2##4 of 4
$CEC4##If Register A < 0xF0
$CEC6##0x00 -> 0xFF (The position may be negative!)
$CEC8#bra_CEC8_skip#--NO-COMMENT--
$CEC9##--NO-COMMENT--
$CECB##store X-position temporarily
$CED1##If Register A != 0x00 (it is an unacceptable sprite)
$CED3##--NO-COMMENT--
$CED5##--NO-COMMENT--
$CED7##If Register A >= 0xF9 (it is an unacceptable sprite)
$CED9##set X-position
$CEDC##--NO-COMMENT--
$CEDD##--NO-COMMENT--
$CEDE##--NO-COMMENT--
$CEDF##To 1st next sprite data byte
$CEE0##If Register is not overflow
$CEE2##Restores a last success sprite byte
$CEE3##If Register X != 0
$CEE5#bra_CEE5_continue#increment offset by ($0002,$0003)
$CEE6##decrement counter
$CEE8##If v_CE5A_counter > 0 (The sprites ($0002,$0003) are exist)
$CEEA#bra_CEEA_end#Store target byte OAM (sprite)
$CEEC#bra_CEEC_end#--NO-COMMENT--
$CEEE##--NO-COMMENT--
$CEEF#bra_CEEF_blank#a correction ($CEAF)
$CEF0##a correction ($CEB5)
$CEF1##a correction ($CEBD)
$CEF2#bra_CEF2_blank#This value means than the sprite isn't used
$CEF4##--NO-COMMENT--
$CEF7##Always true
$CEF9#sub_CEF9_display_16_sprite_magic#--NO-COMMENT--
$CEFB##--NO-COMMENT--
$CEFD##--NO-COMMENT--
$CEFE##--NO-COMMENT--
$CEFF##--NO-COMMENT--
$CF00##Register A = {0x00, 0x10, 0x20, 0x30, 0x40, 0x50, 0x60, 0x70}
$CF01##--NO-COMMENT--
$CF02##--NO-COMMENT--
$CF04##ram_0012 = {0xDE, 0xEE, 0xFE, 0x0E, 0x1E, 0x2E, 0x3E, 0x4E}
$CF06##--NO-COMMENT--
$CF08##--NO-COMMENT--
$CF0A##ram_0013 = (0xCF, 0xD0)
$CF0C##--NO-COMMENT--
$CF0E##set loop counter
$CF10#loc_CF10_loop#get a sprite relative index (see 'The order of the indexes X')
$CF12##--NO-COMMENT--
$CF13##--NO-COMMENT--
$CF14##put a sprite offset (4 bytes each)
$CF15##--NO-COMMENT--
$CF18##--NO-COMMENT--
$CF1A##If a sprite is configured
$CF1C##--NO-COMMENT--
$CF1F#bra_CF1F_skip#<~ Y-position
$CF21##--NO-COMMENT--
$CF24##<~ X-position
$CF26##--NO-COMMENT--
$CF29##store v_sprite_magic3
$CF2A##store v_sprite_magic3
$CF2B##store v_sprite_magic3
$CF2C##bank 05 (2 page)
$CF2E##--NO-COMMENT--
$CF30##If SSBB = 0xXX00 (see v_sprite_magic3)
$CF32##bank 02 (2 page)
$CF34##--NO-COMMENT--
$CF36##If SSBB = 0xXX01 (see v_sprite_magic3)
$CF38##bank 05 (1 page)
$CF3A#bra_CF3A_set_bank#--NO-COMMENT--
$CF3C##--NO-COMMENT--
$CF3F##bank 02_2 or 05_1 or 05_2 in 0x8000-0x9FFF
$CF42##retrieve v_sprite_magic3 ($CF2B)
$CF43##--NO-COMMENT--
$CF45##put the OAM-attributes
$CF47##retrieve v_sprite_magic3 ($CF2A)
$CF48##--NO-COMMENT--
$CF4A##If XCOO = 0xX0XX (see v_sprite_magic3)
$CF4C##using next CHR-page size 1 Kb
$CF4E#bra_CF4E_skip#0x00 or 0x40
$CF50##retrieve v_sprite_magic3 ($CF29)
$CF51##--NO-COMMENT--
$CF52##--NO-COMMENT--
$CF53##--NO-COMMENT--
$CF54##--NO-COMMENT--
$CF56##<~ 0x80 + SS
$CF58##High address
$CF5A##--NO-COMMENT--
$CF5C##Low address
$CF5E##--NO-COMMENT--
$CF61##1 of 2 bytes
$CF62##--NO-COMMENT--
$CF64##Low address
$CF66##2 of 2 bytes
$CF67##--NO-COMMENT--
$CF69##High address
$CF6B##--NO-COMMENT--
$CF6D##Tile count
$CF6F##set loop counter
$CF71##If counter == 0
$CF73##--NO-COMMENT--
$CF75##y == 1, the position of first tile-byte
$CF76#bra_CF76_repeat#--NO-COMMENT--
$CF78##clear
$CF7A##1 of 4
$CF7C##If Register A < 0xF0
$CF7E##0x00 -> 0xFF (The position may be negative!)
$CF80#bra_CF80_skip#--NO-COMMENT--
$CF81##adds starting Y-point
$CF83##set Y-position
$CF86##--NO-COMMENT--
$CF88##--NO-COMMENT--
$CF8A##If Register A != 0x00 (sprite off screen)
$CF8C##Changes to the second byte (Tile index number)
$CF8D##2 of 4
$CF8F##0x00 or 0x40 (current or next CHR-page size 1 Kb)
$CF91##set the tile number sprite
$CF94##Changes to the third byte (Attributes)
$CF95##3 of 4
$CF97##add attributes from vCharacterRenderData (see vCharacterRenderData)
$CF99##set the attributes
$CF9C##Changes to the fourth byte (X-position)
$CF9D##--NO-COMMENT--
$CF9F##clear
$CFA1##4 of 4
$CFA3##If Register A < 0xF0
$CFA5##0x00 -> 0xFF (The position may be negative!)
$CFA7#bra_CFA7_skip#--NO-COMMENT--
$CFA8##--NO-COMMENT--
$CFAA##store X-position temporarily
$CFAC##--NO-COMMENT--
$CFAE##--NO-COMMENT--
$CFB0##If Register A != 0x00 (sprite off screen)
$CFB2##--NO-COMMENT--
$CFB4##--NO-COMMENT--
$CFB6##If Register A >= 0xF9 (it is an unacceptable sprite)
$CFB8##set X-position
$CFBB##--NO-COMMENT--
$CFBC##--NO-COMMENT--
$CFBD##--NO-COMMENT--
$CFBE##To 1st next sprite data byte
$CFBF##If Register X == 0x00
$CFC1#bra_CFC1_next#1 of 4 again
$CFC2##decrement loop counter
$CFC4##If counter != 0
$CFC6##--NO-COMMENT--
$CFC8#loc_CFC8_continue#increment counter (vTempCounter1A)
$CFCA##--NO-COMMENT--
$CFCC##--NO-COMMENT--
$CFCE##Returns If vTempCounter1A >= 0x10
$CFD0##Repeat the loop
$CFD3#bra_CFD3_RTS#--NO-COMMENT--
$CFD4#bra_CFD4_skip_sprite#a correction ($CF8C)
$CFD5##a correction ($CF94)
$CFD6##a correction ($CF9C)
$CFD7#bra_CFD7_skip_sprite#CONSTANT - a sprite doesn't exist
$CFD9##--NO-COMMENT--
$CFDC##Always true
$D05E#sub_accumulator_shift_right_by_5#--NO-COMMENT--
$D05F#sub_accumulator_shift_right_by_4#--NO-COMMENT--
$D060##--NO-COMMENT--
$D061##--NO-COMMENT--
$D062##--NO-COMMENT--
$D063##--NO-COMMENT--
$D064#sub_D064_generate_rng#--NO-COMMENT--
$D066##cache
$D068##--NO-COMMENT--
$D069##* 4
$D06A##--NO-COMMENT--
$D06B##--NO-COMMENT--
$D06D##--NO-COMMENT--
$D06E##--NO-COMMENT--
$D070##--NO-COMMENT--
$D072##--NO-COMMENT--
$D073#sub_D073_invert_sign#see https://www.atariarchives.org/alp/appendix_1.php (LSR Logical Shift Right)
$D075##--NO-COMMENT--
$D076##--NO-COMMENT--
$D078##--NO-COMMENT--
$D079#sub_D079_check_button_press#--NO-COMMENT--
$D07B##--NO-COMMENT--
$D07D##--NO-COMMENT--
$D07F##If the button does not match the expected result
$D081##The double click protection
$D083##--NO-COMMENT--
$D085#bra_D085_RTS#--NO-COMMENT--
$D086#sub_D086_render_14_15_16_17_18_v1#--NO-COMMENT--
$D089#sub_D089_render_14_15_16_17_18_v2#Reset PPU Address
$D08C##--NO-COMMENT--
$D08E##--NO-COMMENT--
$D091##--NO-COMMENT--
$D093##PPU address is {0x14-0x15}
$D096##set loop counter
$D098#bra_D098_loop#--NO-COMMENT--
$D09A##--NO-COMMENT--
$D09D##increments loop counter
$D09E##--NO-COMMENT--
$D0A0##If Register Y != ($0018)
$D0A2##--NO-COMMENT--
$D0A3#sub_D0A3_prepare_14_15_16_17_18#--NO-COMMENT--
$D0A5##--NO-COMMENT--
$D0A6##--NO-COMMENT--
$D0A7##--NO-COMMENT--
$D0A8##get the content offset (5 byte each * Register A)
$D0AA##--NO-COMMENT--
$D0AB##set loop counter
$D0AD#bra_D0AD_loop#get the content value
$D0AF##prepare 0x14 or 0x15 or 0x16 or 0x17 or 0x18
$D0B1##increment the position by the content
$D0B2##increments loop counter
$D0B3##--NO-COMMENT--
$D0B5##If Register X != 0x05
$D0B7##--NO-COMMENT--
$D0B8#sub_D0B8#
$D0BA#bra_D0BA#
$D0C1#sub_D0C1_change_stack_pointer#--NO-COMMENT--
$D0C2##--NO-COMMENT--
$D0C3##--NO-COMMENT--
$D0C4##--NO-COMMENT--
$D0C5#bra_D0C5_skip#--NO-COMMENT--
$D0C6##--NO-COMMENT--
$D0C8##--NO-COMMENT--
$D0C9##--NO-COMMENT--
$D0CB##--NO-COMMENT--
$D0CD##--NO-COMMENT--
$D0CE##--NO-COMMENT--
$D0CF##--NO-COMMENT--
$D0D1##--NO-COMMENT--
$D0D2##--NO-COMMENT--
$D0D3#bra_D0D3_alternative_mode#negative oount -> positive value
$D0D5##--NO-COMMENT--
$D0D8##high ppu address -> $0000
$D0DA##low ppu address ->  $0001
$D0DC##--NO-COMMENT--
$D0DE##set vertical increment per CPU read/write of PPUDATA (increment 32)
$D0E0##--NO-COMMENT--
$D0E3##--NO-COMMENT--
$D0E6##ppu buffer count -> $0002
$D0E8##--NO-COMMENT--
$D0EA#loc_D0EA_loop#--NO-COMMENT--
$D0EC##--NO-COMMENT--
$D0EF##--NO-COMMENT--
$D0F1##PPU address by ($0000)
$D0F6#bra_D0F6_loop#--NO-COMMENT--
$D0F9##--NO-COMMENT--
$D0FC##--NO-COMMENT--
$D0FD##decrement count
$D0FF##If count == 0x00
$D101##increment y
$D102##If Register Y != 0
$D116#bra_D116_skip#increment low ppu address
$D118##--NO-COMMENT--
$D11B#sub_D11B_shared_render#--NO-COMMENT--
$D11D##Branch If the render isn't activated
$D11F##--NO-COMMENT--
$D122##If high ppu address == 0x00
$D124##--NO-COMMENT--
$D126##--NO-COMMENT--
$D129##writes high byte
$D12C##writes low byte
$D12F##--NO-COMMENT--
$D132##If positive value - a horiz inrement, else a vert increment
$D134##store count
$D135##--NO-COMMENT--
$D137##vertical increment per CPU read/write of PPUDATA (increment 32)
$D139##--NO-COMMENT--
$D13C##retrieve count ($D134)
$D13D##negative oount -> positive value
$D13F#bra_D13F_skip#set loop counter
$D141##--NO-COMMENT--
$D143#bra_D143_loop#--NO-COMMENT--
$D146##--NO-COMMENT--
$D149##--NO-COMMENT--
$D14A##decrement ram_0000
$D14C##If ram_0000 != 0
$D14E#bra_D14E_clear#--NO-COMMENT--
$D150##clear
$D153##--NO-COMMENT--
$D155##retrieve ppu ctrl
$D158#bra_D158_RTS#--NO-COMMENT--
$D159#bra_D159_ppu_cache#--NO-COMMENT--
$D15B##--NO-COMMENT--
$D15C##Branch if v_low_counter doesn't multiple of 2
$D15E#bra_D15E_message#--NO-COMMENT--
$D160##--NO-COMMENT--
$D161##Branch if no exist 'A screen with the message'
$D163##--NO-COMMENT--
$D166#bra_D166_update_palette#--NO-COMMENT--
$D169#bra_D169_render_ppu_cache#--NO-COMMENT--
$D16C##Branch If the is empty (0x00 - first byte)
$D16E##1 of N
$D170#bra_D170_repeat#--NO-COMMENT--
$D173##Branch If the count == 0x00
$D175##the count -> Register y
$D176##2 + offs of N
$D177##--NO-COMMENT--
$D17A##--NO-COMMENT--
$D17D##3 + offs of N
$D17E##--NO-COMMENT--
$D181##--NO-COMMENT--
$D184##4 + offs of N
$D185#bra_D185_loop#--NO-COMMENT--
$D188##--NO-COMMENT--
$D18B##--NO-COMMENT--
$D18C##decrement y (the count)
$D18D##Branch If Register Y != 0
$D18F##Always true
$D191#bra_D191_exit#clear (set 0x00)
$D194##--NO-COMMENT--
$D195#loc_D195_scroll_to#--NO-COMMENT--
$D197##store a temporarily value - vHighViewPortPosX
$D199##--NO-COMMENT--
$D19B##If vScrollDirection is the auto scroll to right
$D19D##decrement low X-position
$D19F##--NO-COMMENT--
$D1A1##--NO-COMMENT--
$D1A3##If vLowViewPortPosX != 0xFF, i.e. a screen isn't changed
$D1A5##--NO-COMMENT--
$D1A7##Branch If vHighViewPortPosX != 0
$D1A9##vLowViewPortPosX <- 0
$D1AB##--NO-COMMENT--
$D1AC#bra_D1AC_decrement_screen#--NO-COMMENT--
$D1AE##switch $2000 -> $2400 or $2400 -> $2000 (name table address)
$D1B0##--NO-COMMENT--
$D1B2##--NO-COMMENT--
$D1B4##--NO-COMMENT--
$D1B5#bra_D1B5_skip#--NO-COMMENT--
$D1B7##If vLowViewPortPosX != 0xFC
$D1B9##--NO-COMMENT--
$D1BC#bra_D1BC_skip#store vLowViewPortPosX
$D1BD##--NO-COMMENT--
$D1BF##If vLowViewPortPosX is multiple of 16
$D1C1##retrieve vLowViewPortPosX ($D1BC)
$D1C2##--NO-COMMENT--
$D1C3#bra_D1C3_decrement_40#retrieve vLowViewPortPosX
$D1C4##--NO-COMMENT--
$D1C5##--NO-COMMENT--
$D1C7##If vLowViewPortPosX >= 0x40
$D1C9##--NO-COMMENT--
$D1CB#bra_D1CB_skip#puts vLowViewPortPosX - 0x40
$D1CD##--NO-COMMENT--
$D1D0#bra_D1D0_scroll_to_right#temp increment
$D1D2##--NO-COMMENT--
$D1D4##--NO-COMMENT--
$D1D6##If vCacheNoScreen >= vCurrentRoomLength (outside of the room)
$D1D8##increment low X-position
$D1DA##--NO-COMMENT--
$D1DC##If vLowViewPortPosX != 0x00
$D1DE##store vLowViewPortPosX (0x00)
$D1DF##--NO-COMMENT--
$D1E1##switch $2000 -> $2400 or $2400 -> $2000 (name table address)
$D1E3##--NO-COMMENT--
$D1E5##next screen
$D1E7##--NO-COMMENT--
$D1E9##--NO-COMMENT--
$D1EB#bra_D1EB_skip#--NO-COMMENT--
$D1ED##If vLowViewPortPosX != 0x04
$D1EF##--NO-COMMENT--
$D1F2#bra_D1F2_skip#store vLowViewPortPosX
$D1F3##--NO-COMMENT--
$D1F5##If vLowViewPortPosX is multiple of 16
$D1F7##retrieve vLowViewPortPosX ($D1F2)
$D1F8#bra_D1F8_RTS#--NO-COMMENT--
$D1F9#bra_D1F9_increment_40#retrieve vLowViewPortPosX
$D1FA##--NO-COMMENT--
$D1FB##--NO-COMMENT--
$D1FD##If vLowViewPortPosX < 0xC0
$D1FF##--NO-COMMENT--
$D201#bra_D201_skip#puts vLowViewPortPosX + 0x40
$D203#loc_D203_fill_in_the_ppu_buffer#--NO-COMMENT--
$D205##--NO-COMMENT--
$D207##If vCacheNoScreen >= vCurrentRoomLength (outside of the room)
$D209##--NO-COMMENT--
$D20B##init count (v_ppu_buffer_count <~ 0x98)
$D20E##--NO-COMMENT--
$D210##--NO-COMMENT--
$D212##--NO-COMMENT--
$D213##If vCacheNoScreen = {0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, ...}
$D215##--NO-COMMENT--
$D217#bra_D217_skip#vHighPpuAddress <~ 0x20 or 0x24
$D21A##--NO-COMMENT--
$D21C##set zero
$D21E##--NO-COMMENT--
$D220##--NO-COMMENT--
$D221##--NO-COMMENT--
$D222##/8
$D223##--NO-COMMENT--
$D225##vLowPpuAddress <~ [0xC0-0xDF]
$D228##--NO-COMMENT--
$D22B##--NO-COMMENT--
$D22D##--NO-COMMENT--
$D22F##--NO-COMMENT--
$D230##--NO-COMMENT--
$D232##--NO-COMMENT--
$D233##--NO-COMMENT--
$D234##put in Register A a whole ram_0002 that is a multiple of 12
$D236##1th of 8 info bytes
$D238##--NO-COMMENT--
$D23A##low address + offset
$D23C##2th of 8 info bytes
$D23D##--NO-COMMENT--
$D23F##--NO-COMMENT--
$D241##store A
$D242##--NO-COMMENT--
$D244##using 0x000XXXXX from 0xBBBAAAAA
$D246##high address + offset
$D248##retrieve A ($D241)
$D249##--NO-COMMENT--
$D24C##puts a bank data, using 0xXXX00000 from 0xBBBAAAAA
$D24E##5th of 8 info bytes
$D250##--NO-COMMENT--
$D254##6th of 8 info bytes
$D255##--NO-COMMENT--
$D25B##set loop counter
$D25D#bra_D25D_loop#--NO-COMMENT--
$D25F##--NO-COMMENT--
$D262##--NO-COMMENT--
$D264##switch $0002 (PRG) in 0x8000-09FFF
$D267##--NO-COMMENT--
$D269##set zero
$D26B##loads the index of quartet tiles
$D26D##--NO-COMMENT--
$D26E##--NO-COMMENT--
$D270##--NO-COMMENT--
$D271##ram_0007 = {0x00, 0x01, 0x02, 0x03}
$D273##--NO-COMMENT--
$D274##low address = ram_0050 + ((ram_0052) << 2)
$D276##puts a low address of ppu datas
$D27A##0xBBBAAAAA = ram_0051 + ram_0007
$D27C##switch to the bank with ppu datas
$D27F##puts a high address of ppu datas
$D281##using first pair of quartet
$D283##--NO-COMMENT--
$D285##--NO-COMMENT--
$D287##If vLowViewPortPosX == 0xXXXXX000
$D289##using second pair of quartet
$D28B#bra_D28B_skip#--NO-COMMENT--
$D28D##store a tile number 1
$D290##next vPpuBufferData
$D291##increment loop counter
$D292##--NO-COMMENT--
$D294##store a tile number 2
$D297##increment loop counter
$D29B##--NO-COMMENT--
$D29D##If Register X < 0x18
$D29F##--NO-COMMENT--
$D2A0#loc_D2A0_prepare_attribute_table#--NO-COMMENT--
$D2A2##CONSTANT - level 2 (outside)
$D2A4##If vNoSubLevel != 0x06
$D2A6##a building color (background color)
$D2A8##--NO-COMMENT--
$D2AA##11th level screen
$D2AC##If vHighViewPortPosX >= 0x0A
$D2AE##a sky color (background color)
$D2B0#bra_D2B0_skip#a shared background color, 2nd bg palette
$D2B3#bra_D2B3_skip#--NO-COMMENT--
$D2B5##init count (v_ppu_buffer_count <~ 0x38)
$D2B8##--NO-COMMENT--
$D2BA##vLowPpuAddress <~ 0xC8
$D2BD##--NO-COMMENT--
$D2BF##--NO-COMMENT--
$D2C1##--NO-COMMENT--
$D2C2##If vCacheNoScreen = {0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, ...}
$D2C4##--NO-COMMENT--
$D2C6#bra_D2C6_skip#vHighPpuAddress <~ 0x23 or 0x27 (a shared address is $23C8 or $27C8)
$D2C9##--NO-COMMENT--
$D2CC##3rd of 8 info bytes
$D2CE##--NO-COMMENT--
$D2D0##low address
$D2D2##4th of 8 info bytes
$D2D3##--NO-COMMENT--
$D2D5##select MMC3 bank
$D2D8##high address
$D2DA##set loop counter, !(BUG?) must be 0x38
$D2DC#bra_D2DC_loop#--NO-COMMENT--
$D2DE##store a tile number X
$D2E1##decrement loop counter
$D2E2##If Register Y < 0xF0
$D2E4##--NO-COMMENT--
$D2E5#sub_D2E5#--NO-COMMENT--
$D2E6##store x (D2E6)
$D2E7##--NO-COMMENT--
$D2E9##--NO-COMMENT--
$D2EB##--NO-COMMENT--
$D2EC##--NO-COMMENT--
$D2EE##--NO-COMMENT--
$D2EF##--NO-COMMENT--
$D2F0##--NO-COMMENT--
$D2F2##--NO-COMMENT--
$D2F4##--NO-COMMENT--
$D2F6##--NO-COMMENT--
$D2F7##--NO-COMMENT--
$D2F9##If vScreenChrPosY >= 0x30
$D2FB##--NO-COMMENT--
$D2FC##retrieve x (see D2E6)
$D300#bra_D300_skip#get {0x00, 0x01, 0x02, ..., 0x0C}
$D304##get point(x, y)
$D306##store A
$D307##--NO-COMMENT--
$D30A##1th of 8 info bytes
$D30C##--NO-COMMENT--
$D30E##low address
$D310##2th of 8 info bytes
$D311##--NO-COMMENT--
$D313##select MMC3 bank
$D316##high address
$D318##retrieve A, point(x, y) ($D306)
$D319##--NO-COMMENT--
$D31A##put a index of the quartet tiles
$D31C##store A
$D320##retrieve A, a index of the quartet tiles ($D31C)
$D321##--NO-COMMENT--
$D322##1 of 2 bytes (a relative to offset)
$D323##If an index * 2 < 0xFF
$D325##increment a high address (an offset)
$D327#bra_D327_skip#load Y-position
$D329##--NO-COMMENT--
$D32B##If it isn't a Y-border of the screen block
$D32D##2 of 2 bytes (a relative to offset)
$D32E#bra_D32E_skip#
$D332##load X-position
$D334##--NO-COMMENT--
$D336##If it is a X-border of the screen block
$D338##--NO-COMMENT--
$D33A##--NO-COMMENT--
$D33C##--NO-COMMENT--
$D33E##gets high half-byte
$D340#bra_D340_skip#--NO-COMMENT--
$D341##retrieve x (see D2E6)
$D347#sub_D347#
$D350#bra_D350_skip#
$D36A#loc_D36A#to sub_AD6E bank 06_2
$D370#sub_D370#
$D375##store A
$D378##If Register A != 0x01
$D37A##retrieve A
$D37C#bra_D37C_skip#
$D389#sub_D389_increment_by_posX#
$D397#sub_D397#
$D39F#sub_D39F_increment_by_posX#
$D3AD#sub_D3AD#
$D3B5#bra_D3B5#
$D3C7#bra_D3C7#
$D3C9#bra_D3C9#
$D3EA#bra_D3EA#
$D3EE#bra_D3EE#
$D3F1#bra_D3F1#
$D3F3#bra_D3F3#
$D3F7#sub_D3F7_get_background_screen_info_address#switch prg: bank 00 (page 1)
$D3F9##--NO-COMMENT--
$D3FC##v_cache_reg_y to A
$D3FD##store a
$D3FE##--NO-COMMENT--
$D400##*2
$D401##--NO-COMMENT--
$D402##--NO-COMMENT--
$D405##--NO-COMMENT--
$D407##--NO-COMMENT--
$D40A##--NO-COMMENT--
$D40C##--NO-COMMENT--
$D40E##--NO-COMMENT--
$D410##--NO-COMMENT--
$D412##--NO-COMMENT--
$D414##--NO-COMMENT--
$D416##--NO-COMMENT--
$D418##--NO-COMMENT--
$D41A##--NO-COMMENT--
$D41B##--NO-COMMENT--
$D41D##--NO-COMMENT--
$D41E##--NO-COMMENT--
$D420##--NO-COMMENT--
$D421##--NO-COMMENT--
$D423##0x80, 0x81, 0x83 or 0x87 (depends on the first three bits vBackgroundScreenInfo)
$D425##retrieve a ($D3FD)
$D426##--NO-COMMENT--
$D427##--NO-COMMENT--
$D428#sub_D428_get_addr_background_palette#--NO-COMMENT--
$D42A##--NO-COMMENT--
$D42D##--NO-COMMENT--
$D42F##switch bank 01 (page 2) in $8000-$9FFF
$D432##--NO-COMMENT--
$D434##multiply by 2
$D435##--NO-COMMENT--
$D436##--NO-COMMENT--
$D439##--NO-COMMENT--
$D43B##--NO-COMMENT--
$D43E##--NO-COMMENT--
$D440##transfer 0x7XXX -> 0x9XXX
$D442##--NO-COMMENT--
$D444##--NO-COMMENT--
$D445#sub_D445_load_background_palette#get address in $0000-$0001
$D448##set loop counter
$D44A#bra_D44A_loop#--NO-COMMENT--
$D44C##--NO-COMMENT--
$D44F##decrement y
$D450##In Register Y >= 0x00 && Y < 0xF0
$D452##--NO-COMMENT--
$D453#sub_D453_prepare_gaming_environment#--NO-COMMENT--
$D456##set loop counter
$D458##--NO-COMMENT--
$D45A##CONSTANT - level racing
$D45C##If vNoSubLevel != 0x19
$D45E##set loop counter
$D460#bra_D460_loop#--NO-COMMENT--
$D462##--NO-COMMENT--
$D465##decrement x
$D466##--NO-COMMENT--
$D468##If Register Y != 0x0F
$D46A##--NO-COMMENT--
$D46C##prepare a value for next function
$D46E##--NO-COMMENT--
$D471##7th of 8 info bytes
$D473##--NO-COMMENT--
$D475##low address
$D477##8th of 8 info bytes
$D478##--NO-COMMENT--
$D47A##--NO-COMMENT--
$D47C##--NO-COMMENT--
$D47E##high address
$D480##set loop counter
$D482#bra_D482_loop#--NO-COMMENT--
$D484##prepares a cache for all CHR banks
$D487##decrement y
$D488##If Register Y < 0xF0
$D48A##--NO-COMMENT--
$D48C##scrolls forward 2 screens from the end
$D48E##--NO-COMMENT--
$D490##--NO-COMMENT--
$D491##scrolls forward 44 pixels for low X-position (scroll border - 0x40)
$D493##--NO-COMMENT--
$D495##If vLowViewPortPosX isn't overflow
$D497##--NO-COMMENT--
$D499#bra_D499_skip#$2000 - for 0,2,4,6 ... screens, $2400 - for 1,3,5,7 ... screens
$D49B##--NO-COMMENT--
$D49D##Sprite pattern table address for 8x8 sprites - $1000
$D49F##--NO-COMMENT--
$D4A1##set loop counter
$D4A3#bra_D4A3_loop#store x
$D4A4##CONSTANT - to left
$D4A6##--NO-COMMENT--
$D4A8##--NO-COMMENT--
$D4AB##--NO-COMMENT--
$D4AE##--NO-COMMENT--
$D4B1##145 * 4 = 580 (or 0x244 = 0x80 * 4 + 0x44), i.e 2.5 screen
$D4B7##--NO-COMMENT--
$D4BA##If high ppu address == 0x00
$D4BC##--NO-COMMENT--
$D4BF#bra_D4BF_skip#--NO-COMMENT--
$D4C0##retrieve x ($D4A3)
$D4C1##decrement x
$D4C2##--NO-COMMENT--
$D4C3##If Register X != 0
$D4C5##--NO-COMMENT--
$D4C8##--NO-COMMENT--
$D4CA##*2
$D4CB##--NO-COMMENT--
$D4CC##--NO-COMMENT--
$D4CF##Low address
$D4D1##--NO-COMMENT--
$D4D4##High address
$D4D6##--NO-COMMENT--
$D4D9##Low address
$D4DB##--NO-COMMENT--
$D4DE##High address
$D4E0##--NO-COMMENT--
$D4E2##--NO-COMMENT--
$D4E4##CONSTANT - The briefcase room
$D4E6##If the current room isn't the briefcase room
$D4E8##--NO-COMMENT--
$D4EB#bra_D4EB_skip#--NO-COMMENT--
$D4ED##--NO-COMMENT--
$D4EE##Branch if no exist 'A screen with the message'
$D4F0##--NO-COMMENT--
$D4F3#sub_D4F3_update_palette_with_wait#--NO-COMMENT--
$D4F6##wait for vblank
$D4F8##--NO-COMMENT--
$D4FB#sub_D4FB_render_empty_message_bar#
$D4FF##read PPU status to reset the high/low latch
$D502##--NO-COMMENT--
$D504##--NO-COMMENT--
$D507##--NO-COMMENT--
$D509##PPU address is 0x2000
$D50C##set loop counter (y=0)
$D50D##set assigned value, CONSTANT - A black tile
$D50F#bra_D50F_loop#[$2000-$20FF] - in a black tile (a canvas of the message panel)
$D512##increment Y
$D513##If Register Y != 0
$D515##read PPU status to reset the high/low latch
$D518##--NO-COMMENT--
$D51A##--NO-COMMENT--
$D51D##--NO-COMMENT--
$D51F##PPU address is 0x20E0
$D522##CONSTANT - A white tile (in another palette a tile is black)
$D524##$20E0 - in a white tile
$D527##$20E1 - in a white tile
$D52A##--NO-COMMENT--
$D52C##--NO-COMMENT--
$D52F##--NO-COMMENT--
$D531##PPU address is 0x23C0
$D534##set loop counter
$D536#bra_D536_loop#--NO-COMMENT--
$D539##$23C0-$23D0 by the table with attributes
$D53C##increment X
$D53D##--NO-COMMENT--
$D53F##If Register X != 0x10 (a loop condition)
$D541##--NO-COMMENT--
$D545#sub_D545#--NO-COMMENT--
$D547##--NO-COMMENT--
$D54A##--NO-COMMENT--
$D54C##switch bank 01, page 2 in 0x8000-09FFF
$D56C#bra_D56C_clear_c_rts#
$D56E#bra_D56E#
$D59B#bra_D59B#
$D5B6#sub_D5B6#
$D5D8#bra_D5D8_RTS#
$D5D9#loc_D5D9#
$D5E9#bra_D5E9#
$D5ED#bra_D5ED#
$D5FE#bra_D5FE#
$D604#bra_D604_clear_c_rts#
$D606#sub_D606#
$D61A#bra_D61A#
$D628#bra_D628#
$D641#bra_D641_RTS#
$D642#sub_D642#
$D64C#bra_D64C#
$D660#sub_D660#
$D675#bra_D675_clear_c_rts#
$D67B#sub_D67B#
$D693#bra_D693_skip#
$D6A2#sub_D6A2#
$D6AB#bra_D6AB_RTS#
$D6AC#sub_D6AC#
$D6BB#bra_D6BB#
$D6BD#sub_D6BD#
$D6C6#bra_D6C6_clear_c_rts#
$D6CA#sub_D6CA#
$D6DA#bra_D6DA_RTS#
$D6EF#bra_D6EF_RTS#
$D6F0#loc_D6F0#
$D70E#bra_D70E_RTS#
$D70F#loc_D70F#
$D725#sub_D725#
$D740#bra_D740_RTS#
$D741#loc_D741#
$D752#bra_D752_RTS#
$D753#bra_D753#
$D764#loc_D764#
$D76E#bra_D76E#
$D77F#bra_D77F#
$D78F#loc_D78F#
$D799#bra_D799#
$D79E#bra_D79E_RTS#
$D79F#sub_D79F#
$D7A8#bra_D7A8#
$D7B6#bra_D7B6#
$D7BF#sub_D7BF#
$D7CA#sub_D7CA#
$D7D5#sub_D7D5#
$D7E5#bra_D7E5_RTS#
$D7F0#sub_D7F0#
$D81A#bra_D81A_RTS#
$D84C#bra_D84C_RTS#
$D85E#bra_D85E_RTS#
$D85F#bra_D85F#
$D873#bra_D873#
$D87E#sub_D87E#
$D883#loc_D883#
$D88D#bra_D88D#
$D892#bra_D892_RTS#
$D893#sub_D893#
$D8A8#sub_D8A8#
$D8B6#bra_D8B6_RTS#
$D8D3#bra_D8D3#
$D8DB#sub_D8DB#
$D905#bra_D905_RTS#
$D91F#sub_D91F#
$D937#sub_D937#
$D939#sub_D939#
$D93F#sub_D93F#
$D94A#sub_D94A#
$D952#sub_D952#
$D96D#sub_D96D_init_absolute_chr_positions#--NO-COMMENT--
$D96F#sub_D96F_init_relative_chr_positions#--NO-COMMENT--
$D970##--NO-COMMENT--
$D972##--NO-COMMENT--
$D974#loc_D974_init_short_chr_positions#--NO-COMMENT--
$D976##--NO-COMMENT--
$D995#bra_D995#
$D996#loc_D996#
$D9C3#bra_D9C3_RTS#
$D9DA#sub_D9DA#
$D9E8#bra_D9E8#
$D9EA#bra_D9EA#
$D9EC#bra_D9EC#
$DA02#bra_DA02#
$DA0B#bra_DA0B#
$DA12#bra_DA12#
$DA17#sub_DA17#
$DA25#bra_DA25#
$DA28#sub_DA28#
$DA30#bra_DA30#
$DA38#loc_DA38#
$DA4E#bra_DA4E#
$DA5E#bra_DA5E#
$DA60#loc_DA60#
$DA72#bra_DA72#
$DA85#bra_DA85#
$DA90#sub_DA90#
$DA98#bra_DA98#
$DA9F#sub_DA9F#
$DAA1#bra_DAA1#
$DAAB#bra_DAAB#
$DAC0#tbl_DAC0#
$DAC5#tbl_DAC5#
$DAF4#sub_DAF4_character_subroutine#
$DAF7##--NO-COMMENT--
$DAF9##none (see vScrollDirection)
$DAFB##set 'the character is in the air'
$DAFD##--NO-COMMENT--
$DAFF##If vNoSubLevel != 0x00 (level 1.0)
$DB01##--NO-COMMENT--
$DB04##--NO-COMMENT--
$DB06##CONSTANT - the character is moving on the roof pitch
$DB08##If vMovableChrStatus doesn't contains 0x02
$DB0D#bra_DB0D#
$DB14#bra_DB14_skip#--NO-COMMENT--
$DB16##If the character isn't moving in the water
$DB1B#bra_DB1B_skip#
$DB20#bra_DB20_skip#
$DB2A#bra_DB2A_skip#
$DB44#loc_DB44#
$DB4B#loc_DB4B#
$DB52#bra_DB52_skip#--NO-COMMENT--
$DB55##CONSTANT - The rifle is current and activated
$DB57##If vCurrentWeaponStatus != 0x42
$DB59##--NO-COMMENT--
$DB5B##If RifleFire is timeout
$DB5D##to loc_B1FB (bank_06_2)
$DB60#bra_DB60_skip#--NO-COMMENT--
$DB62##--NO-COMMENT--
$DB65##Go to the branch If the button 'A' isn't pressed
$DB67##--NO-COMMENT--
$DB6A#bra_DB6A#--NO-COMMENT--
$DB6D##CONSTANT - The rifle is current and activated
$DB6F##If vCurrentWeaponStatus == 0x42
$DB71##--NO-COMMENT--
$DB73##--NO-COMMENT--
$DB76##Go to the branch If the button 'Up' isn't pressed
$DB84##CONSTANT - the character is entering a corridor
$DB93#bra_DB93_skip#CONSTANT -  the character stands on the ground
$DB95##--NO-COMMENT--
$DB97##--NO-COMMENT--
$DB99##--NO-COMMENT--
$DB9B##If the button 'Down' is pressed
$DB9D#bra_DB9D_skip#CONSTANT -  the character stands on the ground
$DB9F##--NO-COMMENT--
$DBA1##--NO-COMMENT--
$DBA3##--NO-COMMENT--
$DBA5##We stand up the character, he no longer sits
$DBA7##--NO-COMMENT--
$DBA9##--NO-COMMENT--
$DBAB##If the button 'Left' or 'Right' isn't pressed
$DBB0#bra_DBB0_skip#--NO-COMMENT--
$DBB2##Always true
$DBB4#bra_DBB4_skip#--NO-COMMENT--
$DBB6##CONSTANT - the character is sitting
$DBB8##--NO-COMMENT--
$DBBD##the offset of the sprite address
$DBBF#bra_DBBF_skip#
$DBC2#loc_DBC2#--NO-COMMENT--
$DBC4##CONSTANT - the character is getting a damage
$DBC6##If the character is getting a damage
$DBC8##--NO-COMMENT--
$DBC9##store x
$DBCD##--NO-COMMENT--
$DBCE##retrieve x (see DBC9)
$DBCF#bra_DBCF_skip#
$DBDF##--NO-COMMENT--
$DBE1##--NO-COMMENT--
$DBE2##If the character is looking to the right
$DBE4##--NO-COMMENT--
$DBE5##increment the offset of the sprite address
$DBE6#bra_DBE6_skip#--NO-COMMENT--
$DBE8##CONSTANT - Goemon
$DBEA##If the character isn't Goemon
$DBEF#bra_DBEF_skip#--NO-COMMENT--
$DBF2##AAA = 0, LLL = 0x01, ?? = 0 (see vCharacterRenderData)
$DBF4##CONSTANT - The artillery rifle is activated
$DBF6##If Register Y == #$42
$DBF8##--NO-COMMENT--
$DBFA##If the character is moving on the balloon
$DBFC##If the character is moving in the water
$DBFE##AAA = 1, LLL = 0, ?? = 0x00 (see vCharacterRenderData)
$DC00#bra_DC00_skip#--NO-COMMENT--
$DC02##--NO-COMMENT--
$DC05#loc_DC05#1 bullet
$DC07##--NO-COMMENT--
$DC09##--NO-COMMENT--
$DC0A##If a current character isn't Jigen
$DC0C##3 bullets
$DC0E#bra_DC0E_skip#--NO-COMMENT--
$DC13#bra_DC13_rifle#--NO-COMMENT--
$DC15##--NO-COMMENT--
$DC16##--NO-COMMENT--
$DC17##--NO-COMMENT--
$DC19##increment the offset of the sprite address
$DC1A#loc_DC1A#--NO-COMMENT--
$DC1D##5 bullets
$DC1F##--NO-COMMENT--
$DC24#bra_DC24_balloon#
$DC26##--NO-COMMENT--
$DC27##store x
$DC33##--NO-COMMENT--
$DC34##--NO-COMMENT--
$DC35##--NO-COMMENT--
$DC37##retrieve x + increment
$DC3B#sub_DC3B#
$DC4B#bra_DC4B_skip#
$DC52#loc_DC52#If the button 'Right' is pressed
$DC54##--NO-COMMENT--
$DC56##--NO-COMMENT--
$DC57##If vChrStatus is changed yet
$DC59##Changes a status to 'left'
$DC5E#bra_DC5E_skip#
$DC61#loc_DC61#
$DC67#loc_DC67#
$DC6F#tbl_DC6F#
$DC72#bra_DC72_skip#--NO-COMMENT--
$DC74##--NO-COMMENT--
$DC75##--NO-COMMENT--
$DC77##Changes a status to 'right'
$DC7C#bra_DC7C_skip#
$DC82#sub_DC82#
$DC8A#sub_DC8A#
$DC92#bra_DC92#
$DC94#bra_DC94#
$DC95#bra_DC95_RTS#
$DC96#sub_DC96#
$DC98#sub_DC98#
$DCA8#bra_DCA8_RTS#
$DCA9#loc_DCA9_calc_ScreenChrPosX#--NO-COMMENT--
$DCAB##--NO-COMMENT--
$DCAC##--NO-COMMENT--
$DCAE##--NO-COMMENT--
$DCB0##--NO-COMMENT--
$DCB1#sub_DCB1#
$DCBA#bra_DCBA_RTS#
$DCBB#loc_DCBB#
$DCD7#sub_DCD7#
$DCE5#sub_DCE5#--NO-COMMENT--
$DCE8##If the movement to the right is not allowed
$DCEC#bra_DCEC#
$DCF1#sub_DCF1_reset_velocity#--NO-COMMENT--
$DCF3##Always true
$DCF5##it will never happen
$DCF7#bra_DCF7_skip#--NO-COMMENT--
$DCF9##--NO-COMMENT--
$DCFA#loc_DCFA#--NO-COMMENT--
$DCFC##--NO-COMMENT--
$DCFD##CONSTANT - The character should be visible in its entirety on the right
$DCFF##--NO-COMMENT--
$DD01##--NO-COMMENT--
$DD03##Branch If the character reach the end of the room
$DD05##--NO-COMMENT--
$DD07##If the character doesn't move from one screen to another
$DD09##--NO-COMMENT--
$DD0B#bra_DD0B_skip#
$DD12#sub_DD12#
$DD19#sub_DD19#--NO-COMMENT--
$DD1B##CONSTANT - level 4 or level-racing
$DD1D##If Register A != 0x03
$DD29#bra_DD29_skip#
$DD2C#sub_DD2C#an increment by posX
$DD33#bra_DD33_RTS#
$DD34#sub_DD34#
$DD44#bra_DD44_skip#
$DD47#sub_DD47#
$DD4F#sub_DD4F#
$DD5A#sub_DD5A#
$DD7B#bra_DD7B_RTS#
$DD7C#sub_DD7C#
$DD7E#sub_DD7E#
$DD87#loc_DD87_jump_subroutine#--NO-COMMENT--
$DD89##--NO-COMMENT--
$DD8B##--NO-COMMENT--
$DD8D##If it was a simple jump
$DD8F##--NO-COMMENT--
$DD90##--NO-COMMENT--
$DD92##If it was a high jump (using Up Button)
$DD94##--NO-COMMENT--
$DD95##--NO-COMMENT--
$DD97##If it was a jump down (using Down Button)
$DD99##else it was a jump by side
$DD9A#bra_DD9A_skip#--NO-COMMENT--
$DD9D#loc_DD9D#--NO-COMMENT--
$DD9F##--NO-COMMENT--
$DDB8##CONSTANT - the character stands on the ground
$DDBA##--NO-COMMENT--
$DDBC#bra_DDBC_skip#
$DDD0#bra_DDD0_skip#--NO-COMMENT--
$DDD2##CONSTANT - jump by side
$DDD4##Branch If it isn't a jump by side
$DDD6#bra_DDD6_skip#
$DDDF#bra_DDDF#
$DDEF#bra_DDEF_skip#
$DDF2#bra_DDF2_skip#
$DDF6#bra_DDF6_skip#
$DE06#loc_DE06_skip#--NO-COMMENT--
$DE08##X = [0x00-0x2F]
$DE0B##--NO-COMMENT--
$DE0C##--NO-COMMENT--
$DE0E##CONSTANT - Limit 1 for Y-position
$DE10##If Register A < 0xDF
$DE12##0xDF -> vScreenChrPosY
$DE14##CONSTANT - Limit 2 for Y-position
$DE16##--NO-COMMENT--
$DE18##0x00 -> vScreenChrPosY
$DE1A#bra_DE1A_skip#
$DE1B#bra_DE1B_skip#Resolves a new Y-position of the character after jumping
$DE30#bra_DE30#
$DE39#bra_DE39#
$DE44#bra_DE44#
$DE56#bra_DE56#
$DE67#bra_DE67#
$DE70#bra_DE70#
$DE83#bra_DE83#
$DE86#loc_DE86#--NO-COMMENT--
$DE88##CONSTANT - a maximum amplitude
$DE8A##If vJumpCounter < 0x18
$DE8C##--NO-COMMENT--
$DE8F##If it has not a roof pitch
$DE94#bra_DE94_skip#--NO-COMMENT--
$DE96##CONSTANT - a maximum jump value
$DE98##--NO-COMMENT--
$DE9A##If 0x2F >= vJumpCounter, i.e. less than maximum
$DE9C##--NO-COMMENT--
$DE9E#bra_DE9E_skip#--NO-COMMENT--
$DEA0##CONSTANT - the character is getting a damage
$DEA2##If the character isn't getting a damage
$DEA6#bra_DEA6_skip#
$DEA9#loc_DEA9#
$DEC6#bra_DEC6#
$DECD#bra_DECD#
$DECF#loc_DECF#
$DED2#loc_DED2#
$DEE3#bra_DEE3#
$DEE6#loc_DEE6#
$DEFE#bra_DEFE#
$DF19#bra_DF19#
$DF1C#bra_DF1C#
$DF26#bra_DF26#
$DF31#loc_DF31#
$DF39##CONSTANT
$DF3B#bra_DF3B_skip#
$DF3E#sub_DF3E#
$DF54#bra_DF54#
$DF57#sub_DF57_get_current_character#--NO-COMMENT--
$DF59##CONSTANT - the current selected character
$DF5B##--NO-COMMENT--
$DF5C#sub_DF5C#
$DF63#sub_DF63#
$DF71#bra_DF71#
$DF75#bra_DF75#
$DF78#sub_DF78#
$DF80#sub_DF80#
$DF82#bra_DF82#
$DF8C#bra_DF8C_RTS#
$DF8D#loc_DF8D#
$DF96#bra_DF96#
$DFBC#bra_DFBC#
$DFEB#bra_DFEB#
$DFFB#bra_DFFB#
$E005#loc_E005#
$E00D#loc_E00D#
$E013#loc_E013#
$E01F#bra_E01F#
$E035#bra_E035_RTS#
$E036#tbl_E036#
$E04C#sub_E04C#--NO-COMMENT--
$E04E##--NO-COMMENT--
$E051##Go to the branch If the button 'B' isn't pressed (shot a gun)
$E053##--NO-COMMENT--
$E055##If the character is in the air
$E06C#bra_E06C#
$E07C#bra_E07C#
$E083#bra_E083_RTS#
$E084#bra_E084#
$E093#bra_E093#
$E0A1#tbl_E0A1#
$E0A6#bra_E0A6#Lupin shoots (sound effect)
$E0B4#bra_E0B4#
$E0B9#sub_E0B9#
$E0C5#bra_E0C5#
$E0D4#bra_E0D4#
$E0E5#bra_E0E5#
$E0F6#sub_E0F6#
$E10F#bra_E10F#
$E12F#bra_E12F#
$E132#loc_E132#set loop counter
$E134#bra_E134_loop#--NO-COMMENT--
$E139##decrement vTempCounter10
$E13B##In vTempCounter10 < 0xF0
$E13D#bra_E13D_RTS#--NO-COMMENT--
$E13E#sub_E13E#--NO-COMMENT--
$E140##If Register A < 0xF0
$E14C#bra_E14C#
$E14F#loc_E14F#
$E15E#bra_E15E#
$E165#bra_E165#
$E17A#sub_E17A#
$E18B#sub_E18B#
$E19C#sub_E19C#
$E1A5#bra_E1A5#
$E1A8#sub_E1A8#
$E1BD#bra_E1BD#
$E1D6#bra_E1D6#
$E1E0#bra_E1E0#
$E207#bra_E207#
$E214#sub_E214#
$E21A#bra_E21A_skip#
$E21C#loc_E21C#
$E225#bra_E225#
$E22F#loc_E22F#
$E234#bra_E234_RTS#
$E235#bra_E235#
$E257#sub_E257#
$E276#bra_E276#
$E282#sub_E282#
$E28D#sub_E28D#
$E298#bra_E298_RTS#
$E299#sub_E299#
$E2A5#bra_E2A5_RTS#
$E2A6#sub_E2A6_test_feature_smth#--NO-COMMENT--
$E2A9##If test mode is disabled
$E2C6#bra_E2C6#
$E2DF#bra_E2DF#
$E2F7#bra_E2F7_RTS#--NO-COMMENT--
$E2F8#sub_E2F8_garbage#--NO-COMMENT--
$E2FA##CONSTANT - the current selected character
$E2FC##--NO-COMMENT--
$E2FD##*4
$E2FE##X <~ {0x00, 0x04, 0x08}
$E2FF#sub_E2FF_garbage#set loop counter
$E301#bra_E301_loop#--NO-COMMENT--
$E304##--NO-COMMENT--
$E307##increment position in the table
$E308##increment loop counter
$E309##--NO-COMMENT--
$E30B##If Register Y != 0x04
$E30D##--NO-COMMENT--
$E30E#sub_E30E_fix_colors_in_level1#1 of 3 colors
$E310##--NO-COMMENT--
$E312##--NO-COMMENT--
$E313##--NO-COMMENT--
$E315##--NO-COMMENT--
$E317##--NO-COMMENT--
$E319##If Hp:Lp < 0x03:0x80
$E31B##2 of 3 colors
$E31D##--NO-COMMENT--
$E31F##--NO-COMMENT--
$E321##If vHighViewPortPosX < 0x0D
$E323##3 of 3 colors
$E325#bra_E325_change_colors#--NO-COMMENT--
$E328##--NO-COMMENT--
$E32B##--NO-COMMENT--
$E32E##--NO-COMMENT--
$E331##--NO-COMMENT--
$E332#sub_E332#
$E33E#bra_E33E#
$E348#tbl_E348#
$E358#tbl_E358_init_counter#
$E35D#tbl_E35D_jump_posY_offset#
$E38D#tbl_E38D#
$E38E#tbl_E38E#
$E3A6#tbl_E3A6_unkhown#Lupin
$E3AA##Jigen
$E3AE##Goemon
$E3B2##Lupin in the water (broken)
$E3B5#tbl_E3B5_colors#
$E3BB#loc_E3BB_in_the_water#
$E3C8#bra_E3C8#
$E3E2#bra_E3E2#
$E3E8#bra_E3E8#
$E3F4#bra_E3F4#
$E3FD#loc_E3FD#
$E409#bra_E409#
$E412#loc_E412#
$E426#bra_E426#
$E42E#bra_E42E#
$E444#bra_E444#
$E447#tbl_E447#
$E44A#loc_E44A#
$E45C#bra_E45C#
$E461#bra_E461_RTS#
$E462#bra_E462#
$E46C#sub_E46C#
$E488#bra_E488#
$E48B#sub_E48B#
$E497#sub_E497#
$E4D9#bra_E4D9#
$E4E4#sub_E4E4#
$E4ED#bra_E4ED#
$E511#tbl_E511#
$E512#tbl_E512#
$E515#sub_E515#
$E51F#sub_E51F#
$E526#loc_E526#
$E52F#bra_E52F#
$E531#bra_E531#
$E534#sub_E534#
$E536#loc_E536#
$E55F#bra_E55F#
$E565#loc_E565#--NO-COMMENT--
$E567##--NO-COMMENT--
$E569##Branch If the character isn't moving on the roof pitch
$E56B##--NO-COMMENT--
$E56D#bra_E56D_skip#
$E574#bra_E574_skip#
$E577#bra_E577#
$E57B#bra_E57B#
$E57D#bra_E57D#
$E581#bra_E581_RTS#
$E582#sub_E582#
$E594#bra_E594#
$E5A3#sub_E5A3#
$E5A5#sub_E5A5#
$E5AB#sub_E5AB_add_short_chr_y_positions#
$E5AC##--NO-COMMENT--
$E5AE##--NO-COMMENT--
$E5B0##--NO-COMMENT--
$E5B5#sub_E5B5#
$E5BE#sub_E5BE#
$E5C5#bra_E5C5#
$E5D2#bra_E5D2#
$E5D4#bra_E5D4_RTS#
$E5D5#sub_E5D5#
$E5E5#bra_E5E5#
$E5E8#sub_E5E8#
$E5F3#sub_E5F3#
$E5FB#loc_E5FB#
$E619#bra_E619_RTS#
$E61A#sub_E61A#
$E624#loc_E624#
$E632#loc_E632#
$E638#bra_E638#
$E64A#bra_E64A#
$E653#bra_E653#
$E66B#bra_E66B#
$E670#bra_E670#
$E67E#bra_E67E#
$E691#bra_E691#
$E694#loc_E694#
$E6AD#bra_E6AD#
$E6B9#bra_E6B9#
$E6C0#loc_E6C0#
$E6D0#bra_E6D0#
$E6E4#bra_E6E4#
$E6ED#bra_E6ED#
$E700#sub_E700#
$E707#bra_E707#
$E711#bra_E711_skip#
$E71D#sub_E71D#
$E72E#bra_E72E#
$E737#loc_E737#
$E741#sub_E741#
$E761#bra_E761_RTS#
$E762#bra_E762#
$E775#bra_E775#
$E778#sub_E778#
$E783#sub_E783#
$E78A#sub_E78A_has_roof_pitch#--NO-COMMENT--
$E78C##If vNoSubLevel != 0x00 (i.e. level 1.0)
$E78E##--NO-COMMENT--
$E791##--NO-COMMENT--
$E793##CONSTANT - the character is getting a damage
$E795##If the character is getting a damage
$E797##set loop counter
$E799##--NO-COMMENT--
$E79B##--NO-COMMENT--
$E79C##If the character is looking to the left
$E79E##set loop counter
$E7A0#bra_E7A0_loop#get 1 byte
$E7A3##--NO-COMMENT--
$E7A4##--NO-COMMENT--
$E7A6##store low x-position relative to the starting screen
$E7A8##get 2 byte
$E7AB##--NO-COMMENT--
$E7AD##If vNoScreen <= start screen-value
$E7AF##get 3 byte
$E7B2##--NO-COMMENT--
$E7B3##--NO-COMMENT--
$E7B5##store low x-position relative to the ending screen
$E7B7##get 4 byte
$E7BA##--NO-COMMENT--
$E7BC##If vNoScreen <= end screen-value
$E7BE##increments y
$E7BF##increments y
$E7C0##increments y
$E7C1##increments y
$E7C2##increments y
$E7C3##If Register Y != 0x00
$E7C5#sub_E7C5#--NO-COMMENT--
$E7C7##--NO-COMMENT--
$E7C9##reset a flag 'the character is moving on the roof pitch'
$E7CB##return false
$E7CC##--NO-COMMENT--
$E7CD#bra_E7CD_skip#--NO-COMMENT--
$E7CF##CONSTANT - the character is moving on the roof pitch
$E7D1##If the character is moving on the roof pitch
$E7D3##get 5 byte
$E7D6##--NO-COMMENT--
$E7D8##--NO-COMMENT--
$E7DA##--NO-COMMENT--
$E7DB##If the character is looking to the left
$E7DD##--NO-COMMENT--
$E7DF##--NO-COMMENT--
$E7E2##get an distance to the top point along the Y axis
$E7E4#bra_E7E4_skip#--NO-COMMENT--
$E7E6##--NO-COMMENT--
$E7E7##0x0003 + 0x0002 = top - leg of a right triangle
$E7E9##--NO-COMMENT--
$E7EA##--NO-COMMENT--
$E7EC##If vScreenChrPosY <= 0x0002 + 0x0003
$E7EE##--NO-COMMENT--
$E7F1#bra_E7F1_skip#allowable tolerance
$E7F3##If |vScreenChrPosY - pitchY| >= 4
$E7F5##--NO-COMMENT--
$E7F7##--NO-COMMENT--
$E7F8##--NO-COMMENT--
$E7FA##put a leg of a right triangle
$E7FC##CONSTANT - the character is moving on the roof pitch
$E7FE##--NO-COMMENT--
$E800##--NO-COMMENT--
$E802##reset a velocity
$E804#bra_E804_return_true#return true
$E805##--NO-COMMENT--
$E806#bra_E806#
$E810#loc_E810_on_the_roof_pitch#
$E820#bra_E820#
$E829#bra_E829#
$E83D#bra_E83D#
$E847#loc_E847#
$E878#bra_E878#
$E87F#loc_E87F#
$E882#bra_E882#
$E890#bra_E890#
$E893#loc_E893#
$E8A0#bra_E8A0#
$E8AA#bra_E8AA#
$E8C0#bra_E8C0#
$E8C4#bra_E8C4#
$E8CD#bra_E8CD#
$E8D5#loc_E8D5#
$E8DA#loc_E8DA#
$E8F0#bra_E8F0#
$E904#bra_E904#
$E906#bra_E906#
$E912#bra_E912#
$E94B#bra_E94B#
$E960#bra_E960#
$E96A#bra_E96A#
$E97A#bra_E97A#
$E98A#bra_E98A#
$E98D#bra_E98D#
$E990#loc_E990#
$E9A4#bra_E9A4#
$E9AD#bra_E9AD#
$E9B3#sub_E9B3#
$E9C3#bra_E9C3#
$E9D1#bra_E9D1#
$E9D5#loc_E9D5#
$E9ED#bra_E9ED#
$E9FC#loc_E9FC#
$EA07#bra_EA07#
$EA11#sub_EA11#
$EA20#sub_EA20#
$EA53#bra_EA53#
$EA5B#bra_EA5B#
$EA5E#sub_EA5E#
$EA8B#bra_EA8B#
$EA91#sub_EA91#
$EA97#bra_EA97_RTS#
$EA98#bra_EA98#
$EA9C#bra_EA9C#
$EA9E#bra_EA9E#
$EAA2#bra_EAA2_RTS#
$EAA3#sub_EAA3#
$EAAA#bra_EAAA#
$EAEB#bra_EAEB#
$EAED#bra_EAED#
$EAF3#loc_EAF3#
$EB08#bra_EB08#
$EB11#bra_EB11#
$EB1F#loc_EB1F#
$EB23#loc_EB23#
$EB3B##CONSTANT - the character stands on the ground
$EB3D##--NO-COMMENT--
$EB3F#bra_EB3F#
$EB53#bra_EB53#
$EB74#bra_EB74#
$EB8F#loc_EB8F#
$EB9A#bra_EB9A#
$EBAA#bra_EBAA#
$EBB6#loc_EBB6#
$EBC0#bra_EBC0#
$EBC3#loc_EBC3#
$EBCE#bra_EBCE#
$EBD9#bra_EBD9#
$EBDC#bra_EBDC_RTS#
$EBDD#bra_EBDD#
$EC05#bra_EC05#
$EC0A#loc_EC0A#
$EC1F#loc_EC1F#
$EC23#bra_EC23#
$EC2B#bra_EC2B#
$EC3A#bra_EC3A#
$EC42#bra_EC42_skip#
$EC48#bra_EC48_skip#
$EC5C#sub_EC5C#
$EC65#sub_EC65#
$EC7A#sub_EC7A#
$ECB5#bra_ECB5_RTS#
$ECB6#loc_ECB6#
$ECCE#sub_ECCE#
$ECFC#bra_ECFC#
$ED14#bra_ED14#
$ED1C#bra_ED1C#
$ED2D#bra_ED2D#
$ED38#tbl_ED38#
$ED44#tbl_ED44#
$ED49#tbl_ED49#
$ED4E#vec_ED4E_NMI#store a
$ED4F##--NO-COMMENT--
$ED50##store x
$ED51##--NO-COMMENT--
$ED52##store y
$ED53##Read PPU status to reset the high/low latch
$ED56##--NO-COMMENT--
$ED58##DMA is used instead
$ED5B##--NO-COMMENT--
$ED5D##set 0x0700-0x07FF
$ED60##--NO-COMMENT--
$ED63##--NO-COMMENT--
$ED66##--NO-COMMENT--
$ED68##--NO-COMMENT--
$ED6A##switch $2000 (name table address)
$ED6D##Read PPU status to reset the high/low latch
$ED70##--NO-COMMENT--
$ED72##write X scroll-position
$ED75##write Y scroll-position
$ED78##--NO-COMMENT--
$ED7B##--NO-COMMENT--
$ED7D##Branch if it doesn't contain "Main Menu"
$ED7F##--NO-COMMENT--
$ED82#bra_ED82_next_check#CONSTANT - Select the character
$ED84##If vSharedGameStatus != 'Select the character'
$ED86##--NO-COMMENT--
$ED89#bra_ED89_next_check#--NO-COMMENT--
$ED8C#bra_ED8C_wait#--NO-COMMENT--
$ED8F##checking a sprite 0 hits
$ED91#bra_ED91_wait#--NO-COMMENT--
$ED94##checking a sprite 0 hits
$ED96##--NO-COMMENT--
$ED9C##--NO-COMMENT--
$ED9E##Branch If the render isn't activated
$EDA0##Making rendering temporarily deactivate
$EDA2##--NO-COMMENT--
$EDA4##If status is 'Pause in the game'
$EDA6##--NO-COMMENT--
$EDA8##CONSTANT - status 'Not used'
$EDAA##!(WHY?), it will never follow this branch
$EDAC##--NO-COMMENT--
$EDAF##--NO-COMMENT--
$EDB2##--NO-COMMENT--
$EDB5##--NO-COMMENT--
$EDB7##CONSTANT - 'A final scene'
$EDB9##If vSharedGameStatus == 0x0B
$EDBB##--NO-COMMENT--
$EDC1##--NO-COMMENT--
$EDC3##--NO-COMMENT--
$EDC4##Branch if 'A screen with the message'
$EDC6##to sub_B09A bank 06_2
$EDC9##to sub_AF4D bank 06_2
$EDD5#loc_EDD5_nmi_skip#--NO-COMMENT--
$EDD8##--NO-COMMENT--
$EDDB#bra_EDDB_pause#--NO-COMMENT--
$EDE1#loc_EDE1_nmi_skip#--NO-COMMENT--
$EDE4##--NO-COMMENT--
$EDE7#loc_EDE7_nmi_prefinish#--NO-COMMENT--
$EDE9##restore last sprite number received after character rendering
$EDEB##--NO-COMMENT--
$EDEE##--NO-COMMENT--
$EDF0##--NO-COMMENT--
$EDF2##--NO-COMMENT--
$EDF5##switch bank 02 (page 1) in 0xA000-0BFFF
$EDF8##--NO-COMMENT--
$EDFB##--NO-COMMENT--
$EDFE##CONSTANT - active
$EE00##--NO-COMMENT--
$EE02#bra_EE02_nmi_finish#--NO-COMMENT--
$EE03##retrieve y
$EE04##--NO-COMMENT--
$EE05##retrieve x
$EE06##retrieve a
$EE07#vec_C000_IRQ#irq
$EE08#bra_EE08_skip#--NO-COMMENT--
$EE0A##switch by MMC3_Bank_data in 0xA000-0BFFF
$EE0D##Always true
$EE0F#bra_EE0F_nmi_last_cutscene#to sub_B5FE (bank 06_2)
$EE12##--NO-COMMENT--
$EE15#bra_EE15_skip#--NO-COMMENT--
$EE18##--NO-COMMENT--
$EE1B#bra_EE1B_skip#to sub_B3AA (bank 06_2)
$EE1E##--NO-COMMENT--
$EE21#loc_EE21_nmi_select_character#--NO-COMMENT--
$EE23##Branch If the render isn't activated
$EE25##--NO-COMMENT--
$EE28##--NO-COMMENT--
$EE2B##--NO-COMMENT--
$EE2E##--NO-COMMENT--
$EE31##--NO-COMMENT--
$EE34#loc_EE34_nmi_main_menu#--NO-COMMENT--
$EE37##--NO-COMMENT--
$EE39##CONSTANT - First cutscene with Clarisse Cagliostro
$EE3B##If Register A == 0x91
$EE3D##CONSTANT - Last cutscene with Clarisse Cagliostro
$EE3F##If Register A == 0x93
$EE41##--NO-COMMENT--
$EE44##--NO-COMMENT--
$EE47##--NO-COMMENT--
$EE4A##--NO-COMMENT--
$EE4D#bra_EE4D_nmi_first_cutscene#--NO-COMMENT--
$EE50##--NO-COMMENT--
$EE53#sub_EE53#
$EE5D#sub_EE5D#
$EE72##to sub_A000
$EE7B##to sub_A003
$EE84##to sub_A006
$EE8D##to sub_A009
$EE96##to sub_A00C
$EE9F##to sub_A00F
$EEA8##to sub_A012
$EEB1##to sub_A015
$EEBA##to sub_A018
$EEC3##to sub_A01B
$EECC##to sub_A01E
$EED5##to sub_A000
$EEDE##to sub_A003
$EEE7##to sub_A006
$EEF0##to sub_A009
$EEF9##to sub_A00C
$EF02##to sub_A00F
$EF0B##to sub_A012
$EF14##to sub_A015
$EF1A#loc_EF1A_switch_bank_06_2#--NO-COMMENT--
$EF1C##--NO-COMMENT--
$EF1F##--NO-COMMENT--
$EF21##switch bank 06_2 in 0xA000-0BFFF
$EF24##--NO-COMMENT--
$EF25#sub_EF25_switch_bank_06_1#--NO-COMMENT--
$EF27##--NO-COMMENT--
$EF2A##--NO-COMMENT--
$EF2C##switch bank 06_1 in 0xA000-0BFFF
$EF2F##--NO-COMMENT--
$EF30#sub_EF30_switch_bank_3_p2#--NO-COMMENT--
$EF32##--NO-COMMENT--
$EF35##--NO-COMMENT--
$EF37##switch bank 03 (page 2) in 0xA000-0BFFF
$EF3A##--NO-COMMENT--
$EF3B#sub_EF3B_switch_bank_2_p1#--NO-COMMENT--
$EF3D##--NO-COMMENT--
$EF40##--NO-COMMENT--
$EF42##switch bank 02 (page 1) in 0x8000-09FFF
$EF45##--NO-COMMENT--
$EF46#sub_EF46_switch_bank_4_p1#--NO-COMMENT--
$EF48##--NO-COMMENT--
$EF4B##--NO-COMMENT--
$EF4D##If Register A != 0x00
$EF4F#sub_EF4F_switch_bank_4_p2#--NO-COMMENT--
$EF51##--NO-COMMENT--
$EF54##--NO-COMMENT--
$EF56#bra_EF56_on_page1#switch bank 04 (page 1 or 2) in 0x8000-09FFF
$EF59##assign 0x08 or 0x09
$EF5C##--NO-COMMENT--
$EF5D#loc_EF5D_switch_variable_bank#--NO-COMMENT--
$EF5F##--NO-COMMENT--
$EF62##--NO-COMMENT--
$EF65##switch vBankData (PRG) in 0x8000-09FFF
$EF68##--NO-COMMENT--
$EF69#sub_EF69#
$EF6B##--NO-COMMENT--
$EF6E##If v_item_on_screen >= 0x00 && v_item_on_screen < 0xF0
$EF7A#bra_EF7A_RTS#--NO-COMMENT--
$EF7B#sub_EF7B_shift_all_counters#set loop counter (5 times)
$EF7D#bra_EF7D_loop#--NO-COMMENT--
$EF7F##If counterX == 0x00
$EF81##--NO-COMMENT--
$EF83#bra_EF83_skip#decrement x
$EF84##If Register X < 0xF0
$EF86#sub_EF86_increment_counter#--NO-COMMENT--
$EF88##If v_low_counter != 0
$EF8A##--NO-COMMENT--
$EF8C#bra_EF8C_RTS#--NO-COMMENT--
$EF8D#sub_EF8D_clear_Zenigata_timer#a clear value
$EF8F##--NO-COMMENT--
$EF92##--NO-COMMENT--
$EF95##--NO-COMMENT--
$EF96#sub_EF96#a clear value
$EF98##set loop counter
$EF9A#bra_clear_loop#0x0209-0x02FF in 0
$EF9D##decrements loop counter
$EF9E##If Register X < 0xF0
$EFA0##--NO-COMMENT--
$EFA2##clear
$EFA5#sub_EFA5#--NO-COMMENT--
$EFAE#bra_EFAE_repeat#
$EFB4##--NO-COMMENT--
$EFB7##--NO-COMMENT--
$EFB9##--NO-COMMENT--
$EFBB##--NO-COMMENT--
$EFBC##--NO-COMMENT--
$EFBD##A <~ v_no_level * 3, because the offset is 3 bytes
$EFBF##--NO-COMMENT--
$EFC0##set loop counter, Y <~ the number of the rooms
$EFC3##--NO-COMMENT--
$EFC6##Low address
$EFC8##--NO-COMMENT--
$EFCB##High address
$EFCD#bra_room_loop#--NO-COMMENT--
$EFCF##a room ROM-value
$EFD2##decrements loop counter
$EFD3##If Register Y != 0
$EFD5##set loop counter, Y <~ the number of the briefcase
$EFD8##--NO-COMMENT--
$EFDB##Low address
$EFDD##--NO-COMMENT--
$EFE0##High address
$EFE2#bra_briefcase_loop#--NO-COMMENT--
$EFE4##a briefcase ROM-value
$EFE7##decrements loop counter
$EFE8##If Register Y != 0
$EFEA##--NO-COMMENT--
$EFED##--NO-COMMENT--
$EFEF##*2, because RAM address contains 2 bytes
$EFF0##--NO-COMMENT--
$EFF1##--NO-COMMENT--
$EFF4##--NO-COMMENT--
$EFF6##--NO-COMMENT--
$EFF9##--NO-COMMENT--
$EFFB##--NO-COMMENT--
$EFFC#sub_EFFC_after_select_character#set loop counter
$EFFE##set assigning value
$F000#bra_F000_loop#clear items
$F003##decrements loop counter
$F004##If Register X < 0xF0
$F006##set loop counter
$F008#bra_F008_loop#--NO-COMMENT--
$F00A##If lock 'Select a character' isn't exist
$F00C##--NO-COMMENT--
$F00F##CONSTANT - The lift
$F011##If vEnemyA == 0x0C
$F018#bra_F018_clear_enemy#--NO-COMMENT--
$F01A##clear
$F01D##clear
$F023#bra_F023_next_enemies#--NO-COMMENT--
$F025##If lock 'Select a character' isn't exist
$F027##--NO-COMMENT--
$F02A##CONSTANT - The wall
$F02C##If vEnemyB < 0x30
$F02E##CONSTANT - Blade trap
$F030##If vEnemyB < 0x33
$F032#bra_F032_clear_enemy#--NO-COMMENT--
$F037##--NO-COMMENT--
$F03A##--NO-COMMENT--
$F03D#bra_F03D_skip#decrements loop counter
$F03E##If Register X < 0xF0 (a loop condition)
$F040##--NO-COMMENT--
$F042##CONSTANT - the process, after 'Select a character', but before the game itself
$F044##--NO-COMMENT--
$F046##set assigning value
$F048##set loop counter
$F04A#bra_F04A_clear_loop#clear
$F04D##decrements loop counter
$F04E##If Register X < 0xF0 (a loop condition)
$F059##reset the infrared goggles
$F05B##set loop counter
$F05D#bra_F05D_loop#
$F066##decrements loop counter
$F067##If Register X < 0xF0 (a loop condition)
$F069##--NO-COMMENT--
$F06C##--NO-COMMENT--
$F06E##clear a low part
$F071##clear a high part
$F074##--NO-COMMENT--
$F075#sub_F075_clear_bullet_status#--NO-COMMENT--
$F077##set loop counter
$F079#bra_F079_loop#--NO-COMMENT--
$F07B##decrement x
$F07C##If Register A < 0xF0
$F07E##--NO-COMMENT--
$F07F#sub_F07F#--NO-COMMENT--
$F081##If 'the character is moving in the water'
$F083##a new starting value
$F085##--NO-COMMENT--
$F087##--NO-COMMENT--
$F088##If the character is looking to the right
$F08A##a new starting value
$F08C#bra_F08C_skip#reset a counter
$F08E##--NO-COMMENT--
$F091##If the generation is failed
$F093##type of an enemy
$F095##CONSTANT - The lift
$F099##CONSTANT - The wall
$F09B##If enemy < 0x30
$F09D##CONSTANT - Blade trap
$F09F##If enemy >= 0x30
$F0A8#bra_F0A8_RTS#--NO-COMMENT--
$F0A9#sub_F0A9_enemy_subroutine#--NO-COMMENT--
$F0AB##If 'the character isn't moving in the water'
$F0B0#bra_F0B0_skip#--NO-COMMENT--
$F0B3##If the generation is success
$F0B8#bra_F0B8_skip#CONSTANT - type B
$F0BA##set loop counter
$F0BC##type of an enemy
$F0BE#bra_F0BE_loop#--NO-COMMENT--
$F0C1##If enemy = the current enemy in the table
$F0C3##decrement loop counter
$F0C4##If Register Y <=
$F0C6##0x01 -> 0x00, type A
$F0C7#loc_F0C7#
$F0E7#loc_F0E7#
$F10A##clear a low part
$F10D##clear a high part
$F110#bra_F110_inc_counters#
$F114##--NO-COMMENT--
$F116##If 'the character is moving in the water'
$F118##--NO-COMMENT--
$F11A##CONSTANT - level racing
$F11C##If vNoSubLevel is the level racing
$F11E##--NO-COMMENT--
$F121##CONSTANT - Max value
$F123##If vZenigataTimerHigh1 >= $4B
$F125#bra_F125_skip#set loop counter
$F127#bra_F127_loop#a low counter
$F12A##If low counter is overflow
$F12C##--NO-COMMENT--
$F12F#bra_F12F_skip#decrement loop counter
$F130##decrement loop counter
$F131##If Register X >= 0 && X < 0xF0
$F133##--NO-COMMENT--
$F136##If a counter is overflow
$F138##--NO-COMMENT--
$F13B##CONSTANT - Max value
$F13D##--NO-COMMENT--
$F140##If vZenigataTimerHigh1 < $4B
$F142##Assigned $4B
$F145#bra_F145_RTS#--NO-COMMENT--
$F146#loc_F146#--NO-COMMENT--
$F149##If vEnemyACount != 0
$F14B##--NO-COMMENT--
$F14E##If vEnemyBCount != 0
$F150##increment low
$F153##If vEnemyTimerLow1 is overflow
$F155##increment high
$F158#bra_F158_skip#--NO-COMMENT--
$F15B##CONSTANT - from now on we create a random enemy
$F15D##If vEnemyTimerHigh1 != 3
$F15F##--NO-COMMENT--
$F162##CONSTANT - Zenigata
$F164##If vEnemyA is Zenigata
$F177#sub_F177#
$F183#bra_F183#
$F188#bra_F188#
$F18B#bra_F18B#--NO-COMMENT--
$F18E##If the last function returned true
$F190##--NO-COMMENT--
$F193##If vEnemyACount != 0
$F195##--NO-COMMENT--
$F198##If vEnemyBCount != 0
$F19A##--NO-COMMENT--
$F19C##If the infrared goggles is activated
$F1B1#bra_F1B1#
$F1C2##CONSTANT - Zenigata
$F1D8#bra_F1D8#
$F1EB#sub_F1EB#
$F208#bra_F208#
$F21D#bra_F21D#
$F21E#bra_F21E_RTS#
$F21F#sub_F21F#
$F238#sub_F238#
$F258#bra_F258_RTS#
$F259#loc_F259#--NO-COMMENT--
$F25B##--NO-COMMENT--
$F25D##Branch in 31/32 cases
$F25F##--NO-COMMENT--
$F262##--NO-COMMENT--
$F264##Branch in 3/4 cases
$F26C##If the sign bit is used - appearance on the left, otherwise on the right
$F271#bra_F271_skip#
$F282##--NO-COMMENT--
$F285##--NO-COMMENT--
$F295#sub_F295#
$F2AA#bra_F2AA#
$F2B2#sub_F2B2_try_generate_enemy#--NO-COMMENT--
$F2B5##CONSTANT - Zenigata
$F2B7##If enemyA is Zenigata
$F2B9##--NO-COMMENT--
$F2BC##--NO-COMMENT--
$F2BE##*2, because the CPU addresses have 2 bytes
$F2BF##--NO-COMMENT--
$F2C0##--NO-COMMENT--
$F2C3##Low address
$F2C5##--NO-COMMENT--
$F2C8##High address
$F2CA##--NO-COMMENT--
$F2CC##--NO-COMMENT--
$F2CE##if low_counter == 0xX0 or if low_counter == 0xX8 (right-to-left direction, multiple of 8)
$F2D0##--NO-COMMENT--
$F2D2##if low_counter is odd (multiple of 2)
$F2D4##CONSTANT - left-to-right direction
$F2D6#bra_F2D6_skip#Register A has 0x00 or 0x01
$F2D8##--NO-COMMENT--
$F2DA##only left or right
$F2DC##--NO-COMMENT--
$F2DE##0x00 or 0x01
$F2E0##--NO-COMMENT--
$F2E2##--NO-COMMENT--
$F2E3##--NO-COMMENT--
$F2E5##<~ vHighViewPortPosX or vHighViewPortPosX + 1
$F2E7##set loop counter, 1 of 4
$F2E9#bra_F2E9_loop#load a item macro X-position
$F2EB##--NO-COMMENT--
$F2ED##If the item macro X-position >= HighViewPortPosX (+1)
$F2EF##2 of 4
$F2F0#bra_F2F0_repeat#3 of 4
$F2F1##4 of 4
$F2F2##1 of 4 again
$F2F3##If Register Y != 0x00
$F2F5##increment the high address
$F2F7##--NO-COMMENT--
$F2FA#bra_F2FA_return_false#return false
$F2FB##--NO-COMMENT--
$F2FC#bra_F2FC_skip#If the item macro X-position != HighViewPortPosX (+1)
$F2FE##to 2 byte of 4
$F2FF##load a item X-position
$F301##--NO-COMMENT--
$F302##--NO-COMMENT--
$F304##If vLowViewPortPosX <= item position X
$F306##--NO-COMMENT--
$F309#bra_F309_skip#CONSTANT - allowable tolerance for items
$F30B##If Register A >= 0x0A
$F30D##to 1 byte of 4
$F30E##--NO-COMMENT--
$F310##store 1 item value
$F312##2 of 4
$F313##--NO-COMMENT--
$F315##store 2 item value
$F317##3 of 4
$F318##--NO-COMMENT--
$F31A##store 3 item value
$F31C##4 of 4
$F31D##--NO-COMMENT--
$F31F##store 4 item value
$F321##--NO-COMMENT--
$F323##store a type or an index
$F325##return true
$F326##--NO-COMMENT--
$F327#loc_F327#
$F339#sub_F339#
$F346#bra_F346#
$F358#bra_F358_RTS#
$F359#sub_F359#
$F360#sub_F360#
$F367#sub_F367#
$F370#bra_F370#
$F372#sub_F372#
$F37A#sub_F37A#
$F38A#sub_F38A#
$F392#sub_F392#
$F3A2#loc_enemy_F3A2#
$F3B1#bra_F3B1#
$F3BB#bra_F3BB_skip#
$F3E2#bra_F3E2#
$F3EA#bra_F3EA#
$F412#bra_F412#
$F41F#bra_F41F#
$F427#bra_F427#
$F42A#bra_F42A#
$F433#bra_F433#
$F464#bra_F464_skip#
$F46E#bra_F46E#
$F49D#bra_F49D#
$F4A0#bra_F4A0#
$F4B0#bra_F4B0#
$F4B6#bra_F4B6#
$F4D3#bra_F4D3#
$F4EB#bra_F4EB#
$F4FC#bra_F4FC#
$F51D#bra_F51D#
$F526#bra_F526#
$F528#bra_F528#
$F52D#bra_F52D#
$F530##Enemy pops up (sound effect)
$F54A#bra_F54A#
$F55D#bra_F55D#
$F57A#bra_F57A#
$F57E#bra_F57E#
$F580#bra_F580#
$F59B#bra_F59B#
$F5A5#bra_F5A5#
$F5B9#bra_F5B9#
$F5C1#bra_F5C1_skip#
$F5E3#bra_F5E3#
$F5EB#bra_F5EB#
$F5F7#bra_F5F7#
$F602#bra_F602#
$F605#bra_F605#
$F61B#loc_F61B#
$F621#sub_F621#
$F664#bra_F664#
$F676#bra_F676#
$F694#bra_F694#
$F6A5#bra_F6A5#
$F6B8#bra_F6B8#
$F6C0#bra_F6C0#
$F6F7#bra_F6F7#
$F702#bra_F702#
$F709#bra_F709#
$F70F#bra_F70F#
$F72C#bra_F72C#
$F733#bra_F733#
$F73F#bra_F73F#
$F748#bra_F748#
$F74D#bra_F74D#
$F783#bra_F783#
$F796#bra_F796#
$F7A3#bra_F7A3#
$F7C1#loc_F7C1#
$F7E0#sub_F7E0#
$F7E4#bra_F7E4#
$F7F4#bra_F7F4#
$F820#loc_F820#
$F82B#bra_F82B#
$F84A#sub_F84A#
$F855#bra_F855#
$F874#sub_F874#
$F887#enemy_RTS#
$F888#tbl_F888#Nobody  (0x00)
$F88A##Cat with the gun
$F88C##Gray Land hat
$F88E##Black Land hat
$F890##Land Diver
$F892##Land Diver
$F894##Land Diver
$F896##Zenigata
$F898##Shooter with bazooka
$F89A##The fat sailor
$F89C##The barrel
$F89E##Jumping sailor
$F8A0##The lift
$F8A2##Sensor
$F8A4##Bat
$F8A6##Gray cat
$F8A8##Nun (0x10)
$F8AA##Girl in red, in the castle
$F8AC##Batterfly
$F8AE##Broned batterfly
$F8B0##Shooter with bazooka
$F8B2##Sensor
$F8B4##Black cat
$F8B6##Karate-boy
$F8B8##Karate-boy in blue on the street
$F8BA##Karate-girl
$F8BC##Boy in green
$F8BE##Girl with sword
$F8C0##Knight in armor with a shield
$F8C2##???
$F8C4##Sensor
$F8C6##Fly man
$F8C8##Shooter with bazooka (0x20)
$F8CA##Cobblestone
$F8CC##The bird
$F8CE##The bird with a bomb
$F8D0##Skeleton
$F8D2##Diver
$F8D4##Mummy
$F8D6##Gargoyle
$F8D8##Boss
$F8DA##???
$F8DC##Boss
$F8DE##???
$F8E0##Boss
$F8E2##???
$F8E4##Boss
$F8E6##???
$F8E8##??? (0x30)
$F8EA##???
$F8EC##Breaking platform
$F8EE##Blade trap
$F8F0##Potted snakes
$F8F2##Egyptian with bow
$F8F4##Egyptian with a sword
$F8F6##Egyptian with a boomerung
$F8F8##Ninja upside down
$F8FA##Sensor
$F8FC#tbl_F8FC_enemies#Gray land hat
$F8FD##Black land hat
$F8FE##The barrel
$F8FF##Sensor
$F900##Bat
$F901##Gray cat
$F902##Batterfly
$F903##Broned batterfly
$F904##Sensor
$F905##Black cat
$F906##The barrel
$F907##Sensor
$F908##Cobblestone
$F909##The bird
$F90A##The bird with a bomb
$F90B##Gargoyle
$F90C##Wall
$F90D##Wall
$F90E##Breaking platform
$F90F##Blade trap
$F910##Potted snakes
$F911##Sensor
$F912#bra_F912_inc_next_set#2nd of 5 bytes
$F913#bra_F913_inc_next_set#3rd of 5 bytes
$F914#bra_F914_inc_next_set#4th of 5 bytes
$F915##5th of 5 bytes
$F916##next the set of bytes
$F91A#sub_F91A#
$F91F##1st of 5 bytes
$F921#loc_F921_next_set#
$F923##If Register A < 0xF0
$F925#bra_F925#
$F928#bra_F928_skip#
$F949#bra_F949_skip#
$F94B##2nd of 5 bytes
$F956#bra_F956_skip#
$F95E##3rd of 5 bytes
$F965##4th of 5 bytes
$F969##3rd of 5 bytes
$F973#bra_F973_skip#
$F983##4th of 5 bytes
$F98F##CONSTANT - the room has already been visited
$F9B4#bra_F9B4_skip#
$F9BB#bra_F9BB#4th of 5 bytes
$F9C0#loc_F9C0#5th of 5 bytes
$F9C9#loc_F9C9_safe_return#
$F9CA##retrieve x
$F9CD#sub_F9CD#
$F9CE##store x
$F9D9##1st of 5 bytes
$F9DB#bra_F9DB_next_set#
$F9E7##2nd of 5 bytes
$F9FC#bra_F9FC#
$FA04##3rd of 5 bytes
$FA09##4th of 5 bytes
$FA15##5th of 5 bytes
$FA20#bra_FA20_inc_next_set#3rd of 5 bytes
$FA21##4th of 5 bytes
$FA22##5th of 5 bytes
$FA23##next the set of bytes
$FA26#bra_FA26_RTS#
$FA27#sub_FA27#
$FA2D##Always true
$FA2F#sub_FA2F#
$FA31#bra_FA31_skip#store 0x00 or 0x02
$FA64#bra_FA64_skip#
$FA6F#bra_FA6F#
$FA76#bra_FA76#
$FAA7#bra_FAA7#
$FAAA#bra_FAAA#
$FAAE#bra_FAAE#
$FAC0#sub_FAC0#--NO-COMMENT--
$FAC2##clear
$FAC4##CONSTANT - In the game
$FAC6##CONSTANT - no message
$FAC8##CONSTANT - no pause
$FACA##--NO-COMMENT--
$FACF##If ram_0039 == 0x00
$FAD1##--NO-COMMENT--
$FAD3##If ram_0039 == 0xE0
$FAD5##--NO-COMMENT--
$FAD7##If ram_0039 == 0xC0
$FAD9##--NO-COMMENT--
$FADB##If ram_0039 == 0xC1
$FADD##--NO-COMMENT--
$FADF##If ram_0039 == 0xC2
$FAE1##--NO-COMMENT--
$FAE3##If ram_0039 == 0xC3
$FAE5##--NO-COMMENT--
$FAE7##If ram_0039 == 0xC4
$FAEC#loc_FAEC#--NO-COMMENT--
$FAEF##--NO-COMMENT--
$FAF2##~> vScreenChrPosY
$FAF4##--NO-COMMENT--
$FAF6##CONSTANT - level racing
$FAF8##If vNoSubLevel == 0x19
$FAFA##~> vScreenChrPosY
$FAFC#bra_FAFC_skip#--NO-COMMENT--
$FAFE##--NO-COMMENT--
$FAFF#bra_FAFF#
$FB1A#loc_FB1A#
$FB1F#bra_FB1F#
$FB2F#tbl_FB2F#
$FB32#bra_FB32#
$FB35##--NO-COMMENT--
$FB38#bra_FB38#
$FB3B#bra_FB3B#
$FB41#loc_FB41#
$FB59#bra_FB59#
$FB60#bra_FB60#
$FB65#bra_FB65#
$FB6C#bra_FB6C#
$FB8D#sub_FB8D#
$FB9A#sub_FB9A_prepare_position_by_checkpoint#CONSTANT - an offset for the secondary list
$FB9C##--NO-COMMENT--
$FB9E##If the secondary list is used
$FBA0##CONSTANT - an offset for the main list
$FBA2#bra_FBA2_skip#Register A has 0x00 or 0x01
$FBA4##--NO-COMMENT--
$FBA6##--NO-COMMENT--
$FBA7##--NO-COMMENT--
$FBA9##--NO-COMMENT--
$FBAA##*4 or *8, because the checkpoint position have 4 bytes
$FBAC##--NO-COMMENT--
$FBAD##--NO-COMMENT--
$FBB0##Low address
$FBB2##main list = {0x00, 0x01, 0x02, 0x03}, secondary list = {0x04, 0x05, 0x06, 0x07}
$FBB4##--NO-COMMENT--
$FBB7##High address
$FBB9##1 of 4 bytes
$FBBB##--NO-COMMENT--
$FBBD##--NO-COMMENT--
$FBBF##2 of 4 bytes
$FBC0##--NO-COMMENT--
$FBC2##--NO-COMMENT--
$FBC4##3 of 4 bytes
$FBC5##--NO-COMMENT--
$FBC7##--NO-COMMENT--
$FBC9##4 of 4 bytes
$FBCA##--NO-COMMENT--
$FBCC##--NO-COMMENT--
$FBCE##--NO-COMMENT--
$FBCF##--NO-COMMENT--
$FBD1##--NO-COMMENT--
$FBD3##--NO-COMMENT--
$FBD5##--NO-COMMENT--
$FBD7##--NO-COMMENT--
$FBD9##--NO-COMMENT--
$FBDA#sub_FBDA_push_stack_room#
$FBF7#loc_FBF7_pop_stack_room#
$FC14#sub_FC14_prepare_boss#--NO-COMMENT--
$FC17##If the current room isn't the room with boss
$FC19##If the boss is defeated
$FC1B##--NO-COMMENT--
$FC1D##--NO-COMMENT--
$FC20##assigns the boss number
$FC28#sub_FC28_in_room_with_boss#--NO-COMMENT--
$FC2B##If The boss is defeated
$FC2D##--NO-COMMENT--
$FC30##If room isn't NPC room, room with the briefcase, room with boss
$FC32##--NO-COMMENT--
$FC34##--NO-COMMENT--
$FC36##CONSTANT - This room is the room with boss
$FC38##Branch if the room with no boss
$FC3A#bra_FC3A_return_true#--NO-COMMENT--
$FC3B##--NO-COMMENT--
$FC3C#bra_FC3C_return_false#--NO-COMMENT--
$FC3D##--NO-COMMENT--
$FC3E#sub_FC3E_boss_defeated_status#--NO-COMMENT--
$FC40##CONSTANT - status 'The boss is defeated'
$FC42##--NO-COMMENT--
$FC43#tbl_FC43_enemy_boss#Boss (level 1)
$FC44##Boss (level 2)
$FC45##Boss (level 3)
$FC46##Boss (level 4)
$FC47#sub_FC47#
$FC53#bra_FC53#
$FC64#bra_FC64#
$FC77#bra_FC77#
$FC9C#sub_FC9C#
$FCBA#tbl_FCBA#Nobody  (0x00)
$FCBC##Cat with the gun (level 3) (0x01) Type A
$FCBE##Gray Land hat (level 3) (0x02) Type B
$FCC0##Black Land hat (level 3) (0x03) Type B
$FCC2##Land Diver (level 3) (0x04)
$FCC4##Land Diver (level 2) (0x05) Type A
$FCC6##Land Diver (level 1)  (0x06) Type A
$FCC8##Zenigata (0x07) Type A
$FCCA##Shooter with bazooka (level 3) (0x08) Type A
$FCCC##The fat sailor (level 3) (0x09) Type A
$FCCE##The barrel (level 3) (0x0A) Type B
$FCD0##Jumping sailor (level 3) (0x0B) Type A
$FCD2##The lift (level 3) (0x0C) Type A
$FCD4##Sensor (level 3) (0x0D) Type B
$FCD6##Bat (level 1) (0x0E) Type B
$FCD8##Gray cat (level 1) (0x0F) Type B
$FCDA##Nun (level 2) (0x10) Type A
$FCDC##Girl in red, in the castle (level 1) (0x11) Type A
$FCDE##Batterfly (level 2) (0x12) Type B
$FCE0##Broned batterfly (level 2) (0x13) Type B
$FCE2##Shooter with bazooka (level 2) (0x14) Type A
$FCE4##Sensor (level 2) (0x15) Type B
$FCE6##Black cat (level 1) (0x16) Type B
$FCE8##Karate-boy  (level 2) (0x17) Type A
$FCEA##Karate-boy in blue on the street (level 2) (0x18) Type A
$FCEC##Karate-girl (level 2) (0x19) Type A
$FCEE##Boy in green (level 2) (0x1A) Type A
$FCF0##Girl with sword (level 1) (0x1B) Type A
$FCF2##Knight in armor with a shield (level 1) (0x1C) Type A
$FCF4##??? (0x1D)
$FCF6##Sensor (level 1) (0x1E) Type B
$FCF8##Fly man (0x1F) (level 1) Type A
$FCFA##Shooter with bazooka (level 1) (0x20) Type A
$FCFC##Cobblestone (level-racing, level 4) (0x21) Type B
$FCFE##The bird (level-racing) (0x22) Type B
$FD00##The bird with a bomb (level-racing) (0x23) Type B
$FD02##Skeleton (level 4) (0x24) Type A
$FD04##Diver (0x25) Type B
$FD06##Mummy (0x26) (level 4) Type A
$FD08##Gargoyle (0x27) (level 4) Type B
$FD0A##Boss (level 1) (0x28) Type A
$FD0C##??? (0x29)
$FD0E##Boss (level 2) (0x2A) Type A
$FD10##??? (0x2B)
$FD12##Boss (level 3) (0x2C) Type A
$FD14##??? (0x2D)
$FD16##Boss (level 4) (0x2E) Type A
$FD18##??? (0x2F)
$FD1A##??? (0x30)
$FD1C##??? (0x31)
$FD1E##Breaking platform (level 4) (0x32) Type B
$FD20##Blade trap (level 4) (0x33) Type B
$FD22##Potted snakes (level 4) (0x34)  Type B
$FD24##Egyptian with bow (level 4) (0x35) Type A
$FD26##Egyptian with a sword (level 4) (0x36) Type A
$FD28##Egyptian with a boomerung (level 4) (0x37) Type A
$FD2A##Ninja upside down (level 4) (0x38) Type A
$FD2C##Sensor (level 4) (0x39) Type B
$FDFB#sub_FDFB_crc_test#
$FE01#bra_FE01#
$FE0A##store A
$FE0B##set loop counter
$FE0D#bra_FE0D_loop#
$FE10##store control flags
$FE15##retrieve control flags (from 0xFE10)
$FE1E##decrement y
$FE1F##If Register Y != 0
$FE21##retrieve a (from 0xFE0A)
$FE46#sub_FE46#
$FE4B#bra_FE4B#
$FE50#sub_FE50#
$FE67#bra_FE67_RTS#
$FE68#sub_FE68#
$FE72#sub_FE72#
$FE81#bra_FE81#
$FE86#bra_FE86#
$FEAD#bra_FEAD#
$FEC2#loc_FEC2#
$FEDA#bra_FEDA#
$FEDD#sub_FEDD#
$FEE2#bra_FEE2#
$FEE7#bra_FEE7#
$FF18#sub_FF18#
$FF21#bra_FF21_RTS#
$FF22#sub_FF22#
$FF29#sub_FF29#
$FF30#sub_FF30#
$FF35#bra_FF35_loop#
$FF55#sub_FF55#
$FFA0#tbl_FFA0#
$FFE0#tbl_FFE0#
$FFF0#sub_FFF0_update_sounds#--NO-COMMENT--
$FFF6##The set of the features
$FFF7##not used ???
$FFF8##not used ???
$FFF9##not used ???