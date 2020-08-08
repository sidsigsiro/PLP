///scr_equip_pants

var inv_clothes_temp_0 = noone,
inv_clothes_temp_1 = noone,
inv_clothes_temp_2 = noone,
inv_clothes_temp_3 = noone,
inv_clothes_temp_4 = noone,
inv_clothes_temp_5 = noone,
inv_clothes_temp_6 = noone;


							//name
if inv_clothes[2, 0] != noone {
	inv_clothes_temp_0 = inv_clothes[2, 0];
	inv_clothes_temp_1 = inv_clothes[2, 1];
	inv_clothes_temp_2 = inv_clothes[2, 2];
	inv_clothes_temp_3 = inv_clothes[2, 3];
	inv_clothes_temp_4 = inv_clothes[2, 4];
	inv_clothes_temp_5 = inv_clothes[2, 5];
	inv_clothes_temp_6 = inv_clothes[2, 6];
}

//equip clothes to slot
inv_clothes[2, 0] = inv[inv_gui_select, 0];

inv_clothes[2, 1] = inv[inv_gui_select, 1];

inv_clothes[2, 2] = inv[inv_gui_select, 2];

inv_clothes[2, 3] = inv[inv_gui_select, 3];

inv_clothes[2, 4] = inv[inv_gui_select, 4];

inv_clothes[2, 5] = inv[inv_gui_select, 5];

inv_clothes[2, 6] = inv[inv_gui_select, 6];

//add inv slots
scr_inv_slots_add(inv_clothes[2, 4])

//switch currently equipped clothes to inventory slot
inv[inv_gui_select, 0] = inv_clothes_temp_0;

inv[inv_gui_select, 1] = inv_clothes_temp_1;

inv[inv_gui_select, 2] = inv_clothes_temp_2;

inv[inv_gui_select, 3] = inv_clothes_temp_3;

inv[inv_gui_select, 4] = inv_clothes_temp_4;

inv[inv_gui_select, 5] = inv_clothes_temp_5;

inv[inv_gui_select, 6] = inv_clothes_temp_6;
