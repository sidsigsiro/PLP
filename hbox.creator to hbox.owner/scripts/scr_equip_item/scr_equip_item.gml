///scr_equip_item

//@arg slot to equip

var slot_to_equip = argument0;

var inv_equip_temp_0 = noone,
inv_equip_temp_1 = noone,
inv_equip_temp_2 = noone,
inv_equip_temp_3 = noone,
inv_equip_temp_4 = noone,
inv_equip_temp_5 = noone,
inv_equip_temp_6 = noone;


							//set variables
if inv_equip[slot_to_equip, 0] != noone {
	inv_equip_temp_0 = inv_equip[slot_to_equip, 0];
	inv_equip_temp_1 = inv_equip[slot_to_equip, 1];
	inv_equip_temp_2 = inv_equip[slot_to_equip, 2];
	inv_equip_temp_3 = inv_equip[slot_to_equip, 3];
	inv_equip_temp_4 = inv_equip[slot_to_equip, 4];
	inv_equip_temp_5 = inv_equip[slot_to_equip, 5];
	inv_equip_temp_6 = inv_equip[slot_to_equip, 6];
}

if inv_gui_select_menu = 0 {
	//equip item to slot
	inv_equip[slot_to_equip, 0] = inv[inv_gui_select, 0];

	inv_equip[slot_to_equip, 1] = inv[inv_gui_select, 1];

	inv_equip[slot_to_equip, 2] = inv[inv_gui_select, 2];

	inv_equip[slot_to_equip, 3] = inv[inv_gui_select, 3];

	inv_equip[slot_to_equip, 4] = inv[inv_gui_select, 4];

	inv_equip[slot_to_equip, 5] = inv[inv_gui_select, 5];

	inv_equip[slot_to_equip, 6] = inv[inv_gui_select, 6];
} else if inv_gui_select_menu = 1 {
		//equip item to slot
	inv_equip[slot_to_equip, 0] = inv_equip[inv_gui_select, 0];

	inv_equip[slot_to_equip, 1] = inv_equip[inv_gui_select, 1];

	inv_equip[slot_to_equip, 2] = inv_equip[inv_gui_select, 2];

	inv_equip[slot_to_equip, 3] = inv_equip[inv_gui_select, 3];

	inv_equip[slot_to_equip, 4] = inv_equip[inv_gui_select, 4];

	inv_equip[slot_to_equip, 5] = inv_equip[inv_gui_select, 5];

	inv_equip[slot_to_equip, 6] = inv_equip[inv_gui_select, 6];
}

//switch currently equipped clothes to inventory slot
if inv_gui_select_menu = 0 {
	inv[inv_gui_select, 0] = inv_equip_temp_0;

	inv[inv_gui_select, 1] = inv_equip_temp_1;

	inv[inv_gui_select, 2] = inv_equip_temp_2;

	inv[inv_gui_select, 3] = inv_equip_temp_3;

	inv[inv_gui_select, 4] = inv_equip_temp_4;

	inv[inv_gui_select, 5] = inv_equip_temp_5;

	inv[inv_gui_select, 6] = inv_equip_temp_6;
}

if inv_gui_select_menu = 1 {
	inv_equip[inv_gui_select, 0] = inv_equip_temp_0;

	inv_equip[inv_gui_select, 1] = inv_equip_temp_1;

	inv_equip[inv_gui_select, 2] = inv_equip_temp_2;

	inv_equip[inv_gui_select, 3] = inv_equip_temp_3;

	inv_equip[inv_gui_select, 4] = inv_equip_temp_4;

	inv_equip[inv_gui_select, 5] = inv_equip_temp_5;

	inv_equip[inv_gui_select, 6] = inv_equip_temp_6;
}
