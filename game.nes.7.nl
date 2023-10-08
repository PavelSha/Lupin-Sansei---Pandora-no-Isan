$C01C#bra_C01C_memset_zero#[0x0200-0x02FF] in 0
$D079#Check button press#
$D11B##shared render
$C000#vec_C000_RESET#disable interrupts
$C00C#bra_C00C_wait_til_vblank#wait for vblank (1 time)
$C011#bra_C011_wait_til_vblank#wait for vblank (2 time)
$C01F##[0x0300-0x03FF] in 0
$C022##[0x0400-0x04FF] in 0
$C025##[0x0500-0x05FF] in 0
$C028##[0x0600-0x06FF] in 0
$C031#bra_C031_loop#[0x0000-0x0098] in 0
$C03A#bra_C03A_loop#[0x00A7-0x00FF] in 0
$C08C##to sub_B8C7 (Bank 06_2)
$C94A##Branch If mode=cutscene
$C963##Branch If mode=cutscene
$C331#C331_store_ppu_data#
$C33E#bra_C33E_repeat#
$C347#bra_C347_repeat#
$C351#bra_C351_repeat#
$C001##disable decimal mode (NES chip 2A03 doesn't use decimal mode)
$C319#C319_fill_ppu#CONSTANT - A white tile
$C31D#C31D_clear_ppu#CONSTANT - A black tile
$C31F#C31F_skip#
$C358#C358_clear_OAM#
$F000#F000_loop#clear items
$EFFC##set loop counter
$EFFE##set assigning value
$F008#F008_loop#
$F162##CONSTANT - Zenigata
$C4F5#sub_C4F5_selectAllChrBanks#
$C371#C371_update_palette#
$C402#C402_clear_sound_parts#
$C420#C420_add_sound_effect#
$CE33#CE33_add_sprite_magic#
$EF46#EF46_switch_bank_4_p1_p2#;
$EF4F#EF4F_switch_bank_4_p2#;
$F2D6#F2D6_try_put_briefcase#
$C052##clear
$C054##clear
$C057##clear
$C059##clear
$C05B##clear
$C05D##clear
$C05F##clear
$C061##clear
$C063##clear
$C067##clear
$C065##clear
$C07E##clear
$C07C##clear
$C07A##clear
$C078##clear
$C074##clear
$C06F##clear
$C076##clear
$C072##clear
$C06B##clear
$C069##clear
$C06D##clear
$EF1A#EF1A_switch_bank_06_2#switch bank 06_2 in 0xA000-0BFFF
$EF25#EF25_switch_bank_06_1#switch bank 06_1 in 0xA000-0BFFF
$EF30#EF30_switch_bank_3_p2#switch bank 03 (page 2) in 0xA000-0BFFF
$EF3B#EF3B_switch_bank_2_p1#switch bank 02 (page 1) in 0x8000-09FFF
$EF1C##;
$EF1F##;
$EF21##;
$EF24##;
$EF27##;
$EF2A##;
$EF2C##;
$EF2F##;
$EF32##;
$EF35##;
$EF37##;
$EF3A##;
$EF3D##;
$EF40##;
$EF42##;
$EF45##;
$EF5D#EF5D_switch_variable_bank#
$EF59##assign 0x08 or 0x09
$EF51##;
$EF54##;
$EF56##;
$EF48##;
$EF4B##;
$EF4D##;
$EF5C##;
$EDEE##switch bank 02 (page 1) in 0xA000-0BFFF
$EDF0##;
$EDF2##;
$EDF5##;
$ED4E#vec_ED4E_NMI#
