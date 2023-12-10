$C000#vec_C000_RESET#disable interrupts
$C001##disable decimal mode (NES chip 2A03 doesn't use decimal mode)
$C002##--NO-COMMENT--
$C004##clear ppu 
$C007##clear ppu 
$C00A##clear ppu
$C00C#@bra_C00C_wait_til_vblank#wait for vblank (1 time)
$C011#@bra_C011_wait_til_vblank#wait for vblank (2 time)
$C01C#@bra_C01C_memset_zero#[0x0200-0x02FF] in 0
$C01F##[0x0300-0x03FF] in 0
$C022##[0x0400-0x04FF] in 0
$C025##[0x0500-0x05FF] in 0
$C028##[0x0600-0x06FF] in 0
$C02B##[0x0700-0x07FF] in 0
$C031#@bra_C031_loop#[0x0000-0x0098] in 0
$C03A#@bra_C03A_loop#[0x00A7-0x00FF] in 0
$C03C##increments loop counter
$C03D##If Register X != 0
$C042##CONSTANT - Cutscene
$C044##assign a value
$C046#loc_C046#--NO-COMMENT--
$C048##--NO-COMMENT--
$C04B##--NO-COMMENT--
$C04D##switch bank 06_2 in 0xA000-0BFFF
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
$C08C##to sub_B8C7 (bank 06_2)
$C08F##to sub_B9DA (bank 06_2)
$C095#loc_C095#
$C097##Branch If mode=cutscene
$C09C#loc_C09C#
$C0AC##set loop counter
$C0AE##set assigning value
$C0B0#@bra_C0B0_loop#[0x006C-0x0099] in 0x00
$C0B2##increments loop counter
$C0B3##--NO-COMMENT--
$C0B5##If Register X != 0x99
$C0B7#loc_C0B7#
$C0B9##clear
$C0C5##--NO-COMMENT--
$C0C7##store the high position of the character
$C0C8##--NO-COMMENT--
$C0CA##store the low position of the character
$C0D1##retrieve the low position of the character
$C0D2##--NO-COMMENT--
$C0D4##retrieve the high position of the character
$C0D5##multiplicity of vHighViewPortPosX by 2 sets the nametable address (0x2000 or 0x2400)
$C0D7##activate the right pattern table (0x1000)
$C0FF##to sub_BBA4 (bank 06_2)
$C118#bra_C118#
$C11A##Initializes a counter.
$C11E##Initializes a time of a demo scene.
$C120#bra_C120_repeat#
$C125##--NO-COMMENT--
$C12F#bra_C12F#
$C142##to sub_BC48 (bank 06_2)
$C148#bra_C148#
$C15E#bra_C15E#
$C16F#bra_C16F#
$C183#bra_C183_skip#
$C18B#bra_C18B_skip#
$C194#loc_C194#
$C1AF#bra_C1AF#
$C1B1#loc_C1B1#
$C1C3#bra_C1C3#
$C1CA#tbl_C1CA_checkpoint_on_start_levels#
$C1CE#bra_C1CE#
$C1D0##Branch If in game
$C1D5#bra_C1D5#
$C1E9#bra_C1E9#
$C1F2#bra_C1F2#
$C20E#bra_C20E_skip#
$C20F#bra_C20F#
$C22C#bra_C22C_skip#
$C232##to sub_B319 (bank 06_2)
$C235#bra_C235_skip#
$C23C#bra_C23C_skip#
$C246#bra_C246_skip#
$C251#bra_C251#
$C287#bra_C287#
$C28D#loc_C28D#
$C297##CONSTANT - Stop demo
$C299##If vMenuDemoIndex < 0x07
$C29B##CONSTANT - Cutscene
$C29D##--NO-COMMENT--
$C29F##CONSTANT - The menu
$C2A1##--NO-COMMENT--
$C2A3#@bra_C2A3_skip#
$C2A6#loc_C2A6#
$C2C2#bra_C2C2#
$C2DF#bra_C2DF#
$C2ED#sub_C2ED#
$C2FE#bra_C2FE_RTS#
$C2FF#sub_C2FF_update_ppu_ctrl_with_nmi#
$C301##CONSTANT - Generate an NMI at the start of the vblank
$C303##Always true
$C305#sub_C305_update_ppu_ctrl_with_no_nmi#
$C309#bra_C309_skip#
$C30F#loc_C30F_screen_on#see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
$C311##Always true
$C313#sub_C313_screen_off#see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
$C315#bra_C315_skip#--NO-COMMENT--
$C319#sub_C319_fill_ppu#CONSTANT - A white tile
$C31D#sub_C31D_clear_ppu#CONSTANT - A black tile
$C31F#bra_C31F_skip#
$C327##Read PPU status to reset the high/low latch
$C32A##For the first ppu data ($2000)
$C32F##For the second ppu data  ($2400)
$C331#sub_C331_store_ppu_data#
$C33E#@bra_C33E_repeat#
$C347#@bra_C347_repeat#
$C351#@bra_C351_repeat#
$C358#sub_C358_clear_OAM#
$C35E#bra_C35E_repeat#OAM in 0F 00 00 00 0F 00 00 00 0F 00 00 00 0F ...
$C361##[0x06B7-0x06F6] in 0xF0
$C365##To 2nd sprite data byte
$C366##To 3rd sprite data byte
$C367##To 4th sprite data byte
$C368##To 1st next sprite data byte
$C36B##Store 0x00
$C36D##Store 0x00
$C371#loc_C371_update_palette#--NO-COMMENT--
$C373##--NO-COMMENT--
$C376##--NO-COMMENT--
$C378##PPU address is 0x3F00
$C37B##set loop counter (y=0)
$C37C#@bra_C37C_loop#--NO-COMMENT--
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
$C3B3##If Register Y != 0x20
$C3B5##--NO-COMMENT--
$C3B7##--NO-COMMENT--
$C3BA##--NO-COMMENT--
$C3BC##--NO-COMMENT--
$C3BF##--NO-COMMENT--
$C3C2##see https://www.nesdev.org/wiki/PPU_registers#Palette_corruption
$C3C6#sub_C3C6#
$C3D9#sub_C3D9_increment_nmi_counter#
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
$C3F4#sub_C3F4#
$C402#sub_C402_clear_sound_parts#
$C406##set loop counter
$C408##clear
$C40B##clear
$C40E##clear
$C411#@bra_C411_loop#
$C418##CONSTANT: Sound row step
$C41B##8 iterations for sound row
$C41D##If Register A != 0xA8
$C420#loc_C420_add_sound_effect#put to cache vCacheRam12
$C422##--NO-COMMENT--
$C423##store x
$C424##--NO-COMMENT--
$C425##store y
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
$C445##to 2 byte of 4
$C44B##to 3 byte of 4
$C451##to 4 byte of 4
$C464##switch vBankData (PRG) in 0x8000-09FFF
$C468##retrieve y
$C46A##retrieve x
$C46C#sub_C46C#
$C472##Branch If in game
$C499#bra_C499#
$C4A7#sub_C4A7_read_io_controller#
$C4B1##Writes to instruct both controllers to start recording the current states of all pressed buttons)
$C4B5##Writes to stop recording button states so they can be read out
$C4B8##The count of the buttons
$C4BA#bra_C4BA_repeat#
$C4D0#bra_C4D0_update_btn_pressed#
$C4D8#sub_C4D8#
$C4F5#sub_C4F5_selectAllChrBanks#set loop counter
$C4F7#@bra_C4F7_loop#--NO-COMMENT--
$C4FA##--NO-COMMENT--
$C4FD##--NO-COMMENT--
$C500##decrements loop counter 
$C501##If Register X >= 0
$C503#bra_C503_RTS#
$C504#sub_C504_switch_prg_8000#
$C510##switch vBankData (PRG) in 0x8000-09FFF
$C51E#sub_C51E#
$C53C#sub_C53C_resolve_start_status#--NO-COMMENT--
$C53E##If Register A != 0x00
$C540##--NO-COMMENT--
$C542##A time before message is shown
$C544##If Register A != 0x40
$C546##0 + 1 = 1
$C54F#bra_C54F_skip#CONSTANT - The starting cutscene, during typing the message
$C551##If Register A == 0x01
$C553##A time between the message and menu
$C555##--NO-COMMENT--
$C557##If Register A > counter
$C559##CONSTANT - Show the menu
$C55B##--NO-COMMENT--
$C55E#bra_C55E_skip#0x00 or 0x80
$C560##If Register A != 0x00
$C562##clear
$C564##clear
$C566##1 + 1 = 2
$C568#bra_C568_RTS#
$C569#sub_C569#Switches a cutscene to a main title screen
$C56E##Go to the branch If the button 'Start' isn't pressed
$C572#@bra_C572_skip#
$C57A##If vHighCounter == 0x00
$C57E##If vHighCounter == 0x02
$C584##If vLowCounter < 0xE0
$C586##If vLowCounter == 0xE0
$C588##relative address = 0x9D7B in 0x12-0x13 (1st frame)
$C58C##If vLowCounter < 0xE4
$C58E##If vLowCounter == 0xE4
$C590##relative address = 0x9D9B in 0x12-0x13 (2nd frame)
$C596##relative address = 0x9DBE in 0x12-0x13 (3rd frame)
$C59C##relative address = 0x9DD9 in 0x12-0x13 (4th frame)
$C5A2##relative address = 0x9E00 in 0x12-0x13 (5th frame)
$C5A8#@bra_C5A8_prepare_for_gunshot#
$C5BC##set loop counter
$C5BE#bra_C5BE_loop#
$C5C7##increments y
$C5CA#bra_C5CA_RTS#
$C5CB#bra_C5CB_sounds_of_a_gunshot#sound of a gunshot #1
$C5CD##--NO-COMMENT--
$C5D0##sound of a gunshot #2
$C5D2##--NO-COMMENT--
$C5D5#sub_C5D5#
$C5D8##Branch If a last played level is 0.
$C5EC#bra_C5EC_skip#
$C5EE#bra_C5EE_skip#
$C613#bra_C613_RTS#
$C614#tbl_C614#
$C615#tbl_C615#
$C62C#tbl_C62C_y_position_characters#Lupin
$C62D##Jigen
$C62E##Goemon
$C62F#sub_C62F#
$C63D#bra_C63D_repeat#
$C648#bra_C648_repeat#
$C652#sub_C652#
$C65E#bra_C65E#
$C668#bra_C668_loop#counter as parameter
$C66D##decrement $0000
$C66F##In $0000 >= 0x00 && $0000 < 0xF0
$C672#sub_C672#
$C677##Low address
$C67B##High address (0x8139 in the bank 04_1)
$C67D##set loop counter
$C68E#bra_C68E#
$C6A6#@bra_C6A6_loop#
$C6AD#@bra_C6AD_skip#
$C6B2##CONSTANT - Select the character
$C6B9#bra_C6B9#
$C6BD#bra_C6BD#
$C6C7#loc_C6C7#
$C6D7#@bra_C6D7_skip#
$C6DD#sub_C6DD#
$C6E8#bra_C6E8#
$C6FC#bra_C6FC#
$C712#bra_C712#
$C71F#loc_C71F#
$C72C#bra_C72C#
$C738#bra_C738#
$C754#loc_C754#
$C756#bra_C756_repeat#
$C77B#sub_C77B#
$C784#bra_C784#
$C78E#sub_C78E#
$C7A2##The enemies don't damage
$C7A6#bra_C7A6_skip#
$C7A8##If Register A != 0x00
$C7AA##Selects a character before start a level
$C7AF##Go to the branch If the buttons 'A' or 'B' aren't pressed
$C7B1##Initializes a counter
$C7B5#bra_C7B5#Decrement a counter
$C7BA#bra_C7BA_skip#
$C7C5##store a
$C7C6##CONSTANT - Sound 'switch a character'
$C7C8##--NO-COMMENT--
$C7CB##restore a
$C7D0#bra_C7D0#
$C7DB#bra_C7DB#
$C7E8#bra_C7E8#
$C7EF#loc_C7EF_sprite_magic_in_select_character#
$C7F1##CONSTANT - a gun display frequency (in select character)
$C7F5##0x00 - Lupin, 0x01 - Jigen, 0x02 - Goemon
$C7FA##~> sprite_magic1 (Y pos)
$C7FC##~> sprite_magic4 (X pos)
$C7FE##tile 'Gun'
$C803#bra_C803_skip#Y-position for Lupin
$C805##--NO-COMMENT--
$C809##accumulator_shift_right_by_2
$C80A##--NO-COMMENT--
$C80E##Y-position for Jigen
$C810##--NO-COMMENT--
$C81A##Y-position for Goemon
$C81C##--NO-COMMENT--
$C823##+ 1 shift = shift right by 6
$C824#sub_C824#tile 'Handcuffs'
$C826##CONSTANT - Did the character fall or get arrested?
$C82A##CONSTANT - Did the character fall?
$C82E##tile 'Prison bars'
$C830#bra_C830_handcuffs_sprite_magic#~> sprite_magic4 (X pos)
$C832#sub_C832_gun_sprite_magic#
$C836##~> sprite_magic2 (tile pos)
$C83A##~> sprite_magic3 (attributes)
$C841#sub_C841#
$C848#bra_C848_RTS#
$C849#sub_C849#
$C84B#bra_C84B#
$C853#sub_C853_activate_selectable_character#--NO-COMMENT--
$C855##CONSTANT - see info 'v_chr_live_status'
$C857##--NO-COMMENT--
$C859##--NO-COMMENT--
$C85C#sub_C85C#
$C863#bra_C863#
$C885#sub_C885#--NO-COMMENT--
$C887##Branch If in game
$C889##--NO-COMMENT--
$C88B##If v_menu_counter == 0x00
$C88D##--NO-COMMENT--
$C88F##If vMenuCounterTimes != 0x00
$C891##--NO-COMMENT--
$C893#@bra_C893_skip#
$C897##Go to the branch If the button 'Start' doesn't press
$C89B##avoid looping
$C89F##CONSTANT - In game
$C8A9#bra_C8A9#
$C8C6#bra_C8C6#
$C8D0##to loc_BBA4 (bank 06_2)
$C8D3#bra_C8D3_RTS#
$C8D4#sub_C8D4_check_Yoshikawa#
$C8D6#bra_C8D6_repeat#
$C8DC##branch If [0x0100-0x0108] isn't Yoshikawa
$C8E2#tbl_C8E2#Y
$C8E3##o
$C8E4##s
$C8E5##h
$C8E6##i
$C8E7##k
$C8E8##a
$C8E9##w
$C8EA##a
$C8EB##--NO-COMMENT--
$C8EC#bra_C8EC#
$C8EE#bra_C8EE_repeat#
$C8F1##set Yoshikawa
$C8FD##[0x0099-0x009F] in 0
$C904#sub_C904#
$C906##[0x00A0-0x00A6] in 0
$C911#sub_C911_memset_zero#
$C915#bra_C915_repeat#
$C91C#sub_C91C#
$C92A#bra_C92A#
$C930#bra_C930#
$C93A#bra_C93A#
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
$C9B3#sub_C9B3#
$C9C5#bra_C9C5#
$C9E2#bra_C9E2#
$C9EE#bra_C9EE#
$C9F5#bra_C9F5#
$C9FB#@bra_C9FB_loop#
$CA08#@bra_CA08_skip#
$CA13#sub_CA13#
$CA32#bra_CA32#
$CA3E#bra_CA3E_RTS#
$CA3F#sub_CA3F#
$CA41#sub_CA41#
$CA48#loc_CA48#
$CA4A#bra_CA4A#
$CA52#bra_CA52#
$CA5E#bra_CA5E#
$CA83#bra_CA83_loop#
$CA9A#bra_CA9A#
$CABA#bra_CABA#
$CAC4#tbl_CAC4#
$CACE#tbl_CACE#
$CAD7#tbl_CAD7#
$CAE0#tbl_CAE0#
$CAE1#tbl_CAE1#
$CAE2#tbl_CAE2#
$CAE3#tbl_CAE3#
$CAEC#tbl_CAEC#
$CAED#tbl_CAED#
$CAEE#tbl_CAEE#
$CAEF#tbl_CAEF#
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
$CB8C#sub_CB8C#
$CBA3#bra_CBA3#
$CBB5#bra_CBB5#
$CBD8#bra_CBD8_RTS#
$CBD9#sub_CBD9#
$CC06#sub_CC06#
$CC14#@bra_CC14_loop#
$CC1B#@bra_CC1B_skip#
$CC26#@bra_CC26_skip#
$CC29#bra_CC29_RTS#
$CC2A#sub_CC2A#
$CC37#bra_CC37#
$CC46#tbl_CC46#
$CC66#bra_CC66#
$CC70#bra_CC70#
$CC7E##If the character is looking to the right
$CC80##2nd row
$CC82#@bra_CC82_skip#
$CCC3#bra_CCC3#
$CCCD#bra_CCCD#
$CCDF#loc_CCDF#
$CCE9#sub_CCE9#
$CCEF#sub_CCEF#
$CD0D#sub_CD0D#
$CD13#sub_CD13#
$CD1C#sub_CD1C#
$CD49#loc_CD49#
$CD53#tbl_CD53#a bomb is on the right
$CD59##a bomb is on the left
$CD5F#sub_CD5F#
$CD72#bra_CD72#
$CD7F#bra_CD7F#
$CDAA#bra_CDAA#
$CDBE#tbl_CDBE#
$CDD0#bra_CDD0#
$CDDD#bra_CDDD#
$CDED#bra_CDED_RTS#
$CDEE#sub_CDEE#
$CDF3#loc_CDF3#
$CE05#@bra_CE05_loop#
$CE12#bra_CE12_RTS#
$CE13#sub_CE13#
$CE1C#bra_CE1C#
$CE33#loc_CE33_add_sprite_magic#
$CE34##store y
$CE38##Maximum sprites
$CE3A##If sprite's count == maximum
$CE54##+= 4
$CE57#@bra_CE57_skip#
$CE58##retrieve y
$CE5A#loc_CE5A_render_character#--NO-COMMENT--
$CE5C##clear
$CE5E##clear
$CE60##--NO-COMMENT--
$CE62##--NO-COMMENT--
$CE65##--NO-COMMENT--
$CE67##switch bank 05 in 0x8000-0x9FFF
$CE6A##--NO-COMMENT--
$CE6C##--NO-COMMENT--
$CE6D##--NO-COMMENT--
$CE6F##get the part of the attributes
$CE71##--NO-COMMENT--
$CE72##--NO-COMMENT--
$CE73##--NO-COMMENT--
$CE74##get the part of the address
$CE75##--NO-COMMENT--
$CE77##--NO-COMMENT--
$CE79##a high byte address [0x80-0x83]
$CE7B##--NO-COMMENT--
$CE7D##a low byte address
$CE7F##shift by x
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
$CE9F##If Register A < 0xF0
$CEA1##0x00 -> 0xFF
$CEA3#bra_CEA3_skip#--NO-COMMENT--
$CEA4##--NO-COMMENT--
$CEA6##set Y-position
$CEAD##If Register A != 0x00
$CEAF##Changes to the second byte (Tile index number)
$CEB0##--NO-COMMENT--
$CEB2##set the tile number sprite
$CEB5##Changes to the third byte (Attributes)
$CEB6##--NO-COMMENT--
$CEB8##add attributes from outside
$CEBA##set the attributes
$CEC8#bra_CEC8_skip#
$CED9##set X-position
$CEDC##--NO-COMMENT--
$CEDD##--NO-COMMENT--
$CEDE##--NO-COMMENT--
$CEDF##To 1st next sprite data byte
$CEE5#bra_CEE5_repeat_skip#
$CEEA#bra_CEEA_skip#Store target byte OAM (sprite)
$CEEC#bra_CEEC_end#
$CEEF#bra_CEEF_skip#
$CEF2#bra_CEF2#
$CEF9#sub_CEF9#
$CF10#loc_CF10#
$CF1F#bra_CF1F_skip#
$CF38##bank 05 (1 page) in 0x8000-0x9FFF
$CF3A#bra_CF3A_skip#
$CF4E#bra_CF4E_skip#
$CF58##High address
$CF5C##Low address
$CF64##Low address
$CF69##High address
$CF6D##Tile count
$CF71##If counter == 0
$CF76#bra_CF76_repeat#
$CF80#bra_CF80_skip#
$CFA7#bra_CFA7_skip#
$CFBE##To 1st next sprite data byte
$CFC1#bra_CFC1#
$CFC4##--NO-COMMENT--
$CFC8#loc_CFC8#
$CFD3#bra_CFD3_RTS#
$CFD4#bra_CFD4#
$CFD7#bra_CFD7#
$D05E#sub_accumulator_shift_right_by_5#
$D05F#sub_accumulator_shift_right_by_4#
$D064#sub_D064#
$D073#sub_D073#
$D079#sub_D079_check_button_press#
$D07F##If the button does not match the expected result
$D081##The double click protection
$D085#bra_D085_RTS#
$D086#sub_D086_render_14_15_16_17_18_v1#
$D089#sub_D089_render_14_15_16_17_18_v2#Reset PPU Address
$D08C##--NO-COMMENT--
$D08E##--NO-COMMENT--
$D091##--NO-COMMENT--
$D093##PPU address is {0x14-0x15}
$D096##set loop counter
$D098#@bra_D098_loop#--NO-COMMENT--
$D09A##--NO-COMMENT--
$D09D##increments loop counter
$D09E##--NO-COMMENT--
$D0A0##If Register Y != 0x18
$D0A3#sub_D0A3_prepare_14_15_16_17_18#--NO-COMMENT--
$D0A5##--NO-COMMENT--
$D0A6##--NO-COMMENT--
$D0A7##--NO-COMMENT--
$D0A8##increment += 5
$D0AB##set loop counter
$D0AD#@bra_D0AD_loop#
$D0B2##increments loop counter
$D0B5##If Register X > 0x00
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
$D0D3#bra_D0D3#
$D0EA#loc_D0EA#
$D0F6#bra_D0F6#
$D116#bra_D116#
$D11B#sub_D11B_shared_render#
$D129##writes high byte
$D12C##writes low byte
$D137##Sprite tile select (bit S)
$D13F#bra_D13F_skip#
$D143#bra_D143_repeat#
$D14C##If ram_0000 != 0
$D14E#bra_D14E_skip#
$D158#bra_D158_RTS#
$D159#bra_D159#
$D15E#bra_D15E#
$D161##If vSharedGameStatus was 0bXXXXXXX0
$D166#bra_D166_skip#
$D169#bra_D169_skip#
$D16E##1 of N
$D170#bra_D170#
$D176##2 of N
$D17D##3 of N
$D184##4 of N
$D185#bra_D185#
$D191#bra_D191#
$D195#loc_D195#
$D1AC#bra_D1AC#
$D1B5#bra_D1B5#
$D1BC#bra_D1BC#
$D1C3#bra_D1C3#
$D1CB#bra_D1CB#
$D1D0#bra_D1D0#
$D1EB#bra_D1EB#
$D1F2#bra_D1F2#
$D1F8#bra_D1F8_RTS#
$D1F9#bra_D1F9#
$D201#bra_D201#
$D203#loc_D203#
$D217#bra_D217#
$D25D#bra_D25D#
$D28B#bra_D28B#
$D2A0#loc_D2A0#
$D2B0#bra_D2B0#
$D2B3#bra_D2B3#
$D2C6#bra_D2C6#
$D2DC#bra_D2DC#
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
$D318##retrieve A
$D31C##store A
$D320##retrieve A
$D325##increment a high address
$D327#@bra_D327_skip#
$D32E#@bra_D32E_skip#
$D340#@bra_D340_skip#
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
$D3F7#sub_D3F7_background_screen_subroutine#to v_cache_reg_y, bank 00 (page 1)
$D3FC##v_cache_reg_y to A
$D3FD##store a
$D3FE##--NO-COMMENT--
$D400##--NO-COMMENT--
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
$D423##0x80, 0x81, 0x83 or 0x87 (depends on the first three bits ram_004E)
$D425##retrieve a  
$D428#sub_D428_get_addr_background_palette#--NO-COMMENT--
$D42A##--NO-COMMENT--
$D42D##--NO-COMMENT--
$D42F##switch bank 01 (page 2) in 0x8000-09FFF
$D432##--NO-COMMENT--
$D434##multiply by 2
$D435##--NO-COMMENT--
$D439##--NO-COMMENT--
$D43E##--NO-COMMENT--
$D440##transfer 0x7XXX -> 0x9XXX
$D442##--NO-COMMENT--
$D445#sub_D445_load_background_palette#
$D448##set loop counter
$D44A#@bra_D44A_loop#
$D44F##decrement y
$D450##In Register Y >= 0x00 && Y < 0xF0
$D453#sub_D453#
$D456##set loop counter 
$D458##--NO-COMMENT--
$D45A##CONSTANT - level racing
$D45C##If vNoSubLevel != 0x19
$D45E##set loop counter
$D460#@bra_D460_loop#--NO-COMMENT--
$D462##--NO-COMMENT--
$D465##decrement x
$D466##--NO-COMMENT--
$D468##If Register Y != 0x0F
$D482#bra_D482#
$D499#bra_D499#
$D4A3#bra_D4A3_repeat#
$D4BF#bra_D4BF_skip#
$D4EB#bra_D4EB#
$D4F3#sub_D4F3#
$D4F6##wait for vblank
$D4FB#sub_D4FB#
$D4FF##read PPU status to reset the high/low latch
$D50F#bra_D50F_repeat#
$D536#bra_D536_repeat#
$D545#sub_D545#
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
$DB0D#bra_DB0D#
$DB14#bra_DB14_skip#
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
$DBB0#bra_DBB0_skip#
$DBB4#bra_DBB4_skip#--NO-COMMENT--
$DBB6##CONSTANT - the character is sitting
$DBB8##--NO-COMMENT--
$DBBF#bra_DBBF#
$DBC2#loc_DBC2#
$DBCF#bra_DBCF#
$DBE6#bra_DBE6#
$DBEF#bra_DBEF#
$DBF4##CONSTANT - The artillery rifle is activated
$DBF6##If Register Y == #$42
$DC00#bra_DC00_skip#
$DC05#loc_DC05#1 bullet
$DC07##--NO-COMMENT--
$DC09##--NO-COMMENT--
$DC0A##If a current character isn't Jigen
$DC0C##3 bullets
$DC0E#@bra_DC0E_skip#--NO-COMMENT--
$DC13#bra_DC13_skip#
$DC1A#loc_DC1A#
$DC24#bra_DC24_skip#
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
$DCA9#loc_DCA9#
$DCB1#sub_DCB1#
$DCBA#bra_DCBA_RTS#
$DCBB#loc_DCBB#
$DCD7#sub_DCD7#
$DCE5#sub_DCE5#
$DCEC#bra_DCEC#
$DCF1#sub_DCF1_reset_velocity#
$DCF5##it will never happen
$DCF7#bra_DCF7_skip#
$DCFA#loc_DCFA#
$DD0B#bra_DD0B#
$DD12#sub_DD12#
$DD19#sub_DD19#
$DD29#bra_DD29_skip#
$DD2C#sub_DD2C#
$DD33#bra_DD33_RTS#
$DD34#sub_DD34#
$DD44#bra_DD44_skip#
$DD47#sub_DD47#
$DD4F#sub_DD4F#
$DD5A#sub_DD5A#
$DD7B#bra_DD7B_RTS#
$DD7C#sub_DD7C#
$DD7E#sub_DD7E#
$DD87#loc_DD87#
$DD9A#bra_DD9A#
$DD9D#loc_DD9D#
$DDBC#bra_DDBC#
$DDD0#bra_DDD0#
$DDD6#bra_DDD6#
$DDDF#bra_DDDF#
$DDEF#bra_DDEF#
$DDF2#bra_DDF2#
$DDF6#bra_DDF6#
$DE06#loc_DE06#
$DE1A#bra_DE1A#
$DE1B#bra_DE1B#
$DE30#bra_DE30#
$DE39#bra_DE39#
$DE44#bra_DE44#
$DE56#bra_DE56#
$DE67#bra_DE67#
$DE70#bra_DE70#
$DE83#bra_DE83#
$DE86#loc_DE86#
$DE94#bra_DE94#
$DE9E#bra_DE9E#
$DEA6#bra_DEA6#
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
$DF3B#@bra_DF3B_skip#
$DF3E#sub_DF3E#
$DF54#bra_DF54#
$DF57#sub_DF57#
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
$E04C#sub_E04C#
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
$E134#bra_E134_loop#
$E139##decrement x
$E13B##In Register X < 0xF0
$E13D#bra_E13D_RTS#
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
$E2A6#sub_E2A6_test_feature_smth#
$E2F7#bra_E2F7_RTS#
$E2F8#sub_E2F8#
$E2FF#sub_E2FF#
$E301#bra_E301#
$E30E#sub_E30E#
$E325#bra_E325#
$E332#sub_E332#
$E33E#bra_E33E#
$E348#tbl_E348#
$E358#tbl_E358#
$E35D#tbl_E35D#
$E38D#tbl_E38D#
$E38E#tbl_E38E#
$E3A6#tbl_E3A6#
$E3B5#tbl_E3B5#
$E3B6#tbl_E3B6#
$E3BB#loc_E3BB#
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
$E565#loc_E565#
$E56D#bra_E56D#
$E574#bra_E574#
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
$E78A#sub_E78A#
$E7A0#bra_E7A0#
$E7C5#sub_E7C5#
$E7CD#bra_E7CD#
$E7E4#bra_E7E4#
$E7F1#bra_E7F1#
$E804#bra_E804#
$E806#bra_E806#
$E810#loc_E810#
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
$ED6D##Read PPU status to reset the high/low latch
$ED72##write X scroll-position
$ED75##write Y scroll-position
$ED82#bra_ED82#
$ED89#bra_ED89#
$ED8C#bra_ED8C_repeat#
$ED91#bra_ED91_repeat#
$EDC6##to sub_B09A bank 06_2
$EDC9##to sub_AF4D bank 06_2
$EDD5#loc_EDD5#
$EDDB#bra_EDDB#
$EDE1#loc_EDE1#
$EDE7#loc_EDE7#
$EDEE##--NO-COMMENT--
$EDF0##--NO-COMMENT--
$EDF2##--NO-COMMENT--
$EDF5##switch bank 02 (page 1) in 0xA000-0BFFF
$EE02#bra_EE02#
$EE03##retrieve y
$EE05##retrieve x
$EE06##retrieve a
$EE07#vec_C000_IRQ#irq
$EE08#bra_EE08#
$EE0F#bra_EE0F#
$EE15#bra_EE15#
$EE1B#bra_EE1B#to sub_B3AA (bank 06_2)
$EE21#loc_EE21#
$EE34#loc_EE34#
$EE37##--NO-COMMENT--
$EE39##CONSTANT - First cutscene with the message
$EE3B##If Register A == 0x91
$EE4D#bra_EE4D#
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
$EF25#sub_EF25_switch_bank_06_1#--NO-COMMENT--
$EF27##--NO-COMMENT--
$EF2A##--NO-COMMENT--
$EF2C##switch bank 06_1 in 0xA000-0BFFF
$EF30#sub_EF30_switch_bank_3_p2#--NO-COMMENT--
$EF32##--NO-COMMENT--
$EF35##--NO-COMMENT--
$EF37##switch bank 03 (page 2) in 0xA000-0BFFF
$EF3B#sub_EF3B_switch_bank_2_p1#--NO-COMMENT--
$EF3D##--NO-COMMENT--
$EF40##--NO-COMMENT--
$EF42##switch bank 02 (page 1) in 0x8000-09FFF
$EF46#sub_EF46_switch_bank_4_p1_p2#--NO-COMMENT--
$EF48##--NO-COMMENT--
$EF4B##--NO-COMMENT--
$EF4D##If Register A != 0x00
$EF4F#sub_EF4F_switch_bank_4_p2#--NO-COMMENT--
$EF51##--NO-COMMENT--
$EF54##--NO-COMMENT--
$EF56#bra_EF56_on_page1#switch bank 04 (page 1 or 2) in 0x8000-09FFF
$EF59##assign 0x08 or 0x09
$EF5D#loc_EF5D_switch_variable_bank#
$EF65##switch vBankData (PRG) in 0x8000-09FFF
$EF69#sub_EF69#
$EF7A#bra_EF7A_RTS#
$EF7B#sub_EF7B#
$EF7D#bra_EF7D#
$EF83#bra_EF83#
$EF86#sub_EF86_increment_counter#--NO-COMMENT--
$EF88##--NO-COMMENT--
$EF8A##--NO-COMMENT--
$EF8C#@bra_EF8C_RTS#
$EF8D#sub_EF8D#
$EF96#sub_EF96#
$EF9A#@clear_loop#0x0209-0x02FF in 0
$EFA5#sub_EFA5#
$EFAE#bra_EFAE_repeat#
$EFCD#@room_loop#
$EFE2#@briefcase_loop#
$EFFC#sub_EFFC#set loop counter
$EFFE##set assigning value
$F000#@bra_F000_loop#clear items
$F003##decrements loop counter
$F006##set loop counter
$F008#bra_F008_loop#
$F018#@bra_F018_skip#
$F023#@bra_F023_skip#
$F032#bra_F032_skip#
$F04A#@clear_item_loop#clear
$F05D#@bra_F05D_loop#
$F06E##clear a low part
$F071##clear a high part
$F075#sub_F075_clear_bullet_status#--NO-COMMENT--
$F077##set loop counter
$F079#@bra_F079_loop#--NO-COMMENT--
$F07B##decrement x
$F07C##If Register A < 0xF0
$F07E##--NO-COMMENT--
$F07F#sub_F07F#
$F08C#bra_F08C_skip#
$F091##If the generation failed
$F093##type of an enemy
$F095##CONSTANT - The lift
$F099##CONSTANT - The wall
$F09D##CONSTANT - Blade trap
$F0A8#bra_F0A8_RTS#
$F0A9#sub_F0A9#
$F0B0#bra_F0B0#
$F0B8#bra_F0B8_skip#
$F0BE#bra_F0BE_repeat#
$F0C7#loc_F0C7#
$F0E7#loc_F0E7#
$F10A##clear a low part
$F10D##clear a high part
$F110#bra_F110#
$F125#bra_F125#
$F127#bra_F127#
$F12F#bra_F12F#
$F13B##CONSTANT - Max value
$F140##If ram_0317 < $4B
$F142##Assigned $4B
$F145#bra_F145_RTS#
$F146#loc_F146#
$F150##increment low
$F155##increment high
$F158#bra_F158#
$F15B##CONSTANT - from now on we create a random enemy
$F15D##If vEnemyTimerHigh1 != 3
$F162##CONSTANT - Zenigata
$F177#sub_F177#
$F183#bra_F183#
$F188#bra_F188#
$F18B#bra_F18B#
$F1B1#bra_F1B1#
$F1D8#bra_F1D8#
$F1EB#sub_F1EB#
$F208#bra_F208#
$F21D#bra_F21D#
$F21E#bra_F21E_RTS#
$F21F#sub_F21F#
$F238#sub_F238#
$F258#bra_F258_RTS#
$F259#loc_F259#
$F271#bra_F271#
$F295#sub_F295#
$F2AA#bra_F2AA#
$F2B2#sub_F2B2_try_generate_enemy#
$F2B5##CONSTANT - Zenigata
$F2B7##If enemyA is Zenigata
$F2C3##Low address
$F2C8##High address
$F2CE##if low_counter == 0xX0 or if low_counter == 0xX8
$F2D2##if low_counter is odd
$F2D6#bra_F2D6_skip#Register A has 0x00 or 0x01
$F2D8##--NO-COMMENT--
$F2DA##only left or right
$F2E9#loc_F2E9_update_address_and_repeat#
$F2ED##If Register A >= ram_0001
$F2F0#bra_F2F0_repeat#
$F2F5##--NO-COMMENT--
$F2FA#bra_F2FA_clear_c_rts#
$F2FC#bra_F2FC_skip#
$F2FE##to 2 byte of 4
$F309#bra_F309_skip#
$F30B##If Register A >= 0x0A
$F30D##to 1 byte of 4
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
$F3A2#enemy_F3A2#
$F3B1#bra_F3B1#
$F3BB#@bra_F3BB_skip#
$F3E2#bra_F3E2#
$F3EA#bra_F3EA#
$F412#bra_F412#
$F41F#bra_F41F#
$F427#bra_F427#
$F42A#bra_F42A#
$F433#bra_F433#
$F464#@bra_F464_skip#
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
$F8FC#tbl_F8FC#
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
$F949#@bra_F949_skip#
$F94B##2nd of 5 bytes
$F956#@bra_F956_skip#
$F95E##3rd of 5 bytes
$F965##4th of 5 bytes
$F969##3rd of 5 bytes
$F973#@bra_F973_skip#
$F983##4th of 5 bytes
$F98F##CONSTANT - the room has already been visited
$F9B4#@bra_F9B4_skip#
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
$FACF##If ram_0039 == 0x00
$FAD3##If ram_0039 == 0xE0
$FAD7##If ram_0039 == 0xE0
$FADB##If ram_0039 == 0xC1
$FADF##If ram_0039 == 0xC2
$FAE3##If ram_0039 == 0xC3
$FAE7##If ram_0039 == 0xC4
$FAEC#loc_FAEC#
$FAF2##~> vScreenChrPosY
$FAF4##--NO-COMMENT--
$FAF6##CONSTANT - level racing
$FAF8##If vNoSubLevel == 0x19
$FAFA##~> vScreenChrPosY 
$FAFC#@bra_FAFC_skip#--NO-COMMENT--
$FAFF#bra_FAFF#
$FB1A#loc_FB1A#
$FB1F#bra_FB1F#
$FB2F#tbl_FB2F#
$FB32#bra_FB32#
$FB38#bra_FB38#
$FB3B#bra_FB3B#
$FB41#loc_FB41#
$FB59#bra_FB59#
$FB60#bra_FB60#
$FB65#bra_FB65#
$FB6C#bra_FB6C#
$FB8D#sub_FB8D#
$FB9A#sub_FB9A_prepare_position_by_checkpoint#
$FB9E##If v_corridor_magic5 & 0x80
$FBA2#@bra_FBA2_skip#Register A has 0x00 or 0x01
$FBB0##Low address
$FBB7##High address
$FBB9##--NO-COMMENT--
$FBBF##2 of 4 bytes
$FBC4##3 of 4 bytes
$FBC9##4 of 4 bytes
$FBDA#sub_FBDA_push_stack_room#
$FBF7#loc_FBF7_pop_stack_room#
$FC14#sub_FC14#
$FC28#sub_FC28#
$FC2B##If Register A != 0x00
$FC2D##to sub_BBFE (bank 06_2)
$FC3A#bra_FC3A_return_true#
$FC3C#bra_FC3C_skip#
$FC3E#sub_FC3E#
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
$FDFB#sub_FDFB#
$FE0D#bra_FE0D_repeat#
$FE67#bra_FE67_RTS#
$FFA0#tbl_FFA0#
$FFF0#sub_FFF0#
$FFF6##The set of the features
$FFF7##not used ???
$FFF8##not used ???
$FFF9##not used ???