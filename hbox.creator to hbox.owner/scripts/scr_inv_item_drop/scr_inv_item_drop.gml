///scr_drop_clothes
//arg inv_slot

var property_0,
	property_1,
	property_2,
	property_3,
	property_4,
	property_5,
	property_6;

if inv_gui_select_menu = 0 or inv_gui_select_menu = 2 {
	//drop item from inventory slot
	property_0 = inv[argument0, 0];
	property_1 = inv[argument0, 1];
	property_2 = inv[argument0, 2];
	property_3 = inv[argument0, 3];
	property_4 = inv[argument0, 4];
	property_5 = inv[argument0, 5];
	property_6 = inv[argument0, 6];
}

if inv_gui_select_menu = 1 {
	//drop item from inventory slot
	property_0 = inv_equip[argument0, 0];
	property_1 = inv_equip[argument0, 1];
	property_2 = inv_equip[argument0, 2];
	property_3 = inv_equip[argument0, 3];
	property_4 = inv_equip[argument0, 4];
	property_5 = inv_equip[argument0, 5];
	property_6 = inv_equip[argument0, 6];
}


var dropped_item = instance_create_layer(x, y, "instance_layer", obj_pickup);

with(dropped_item) {
	scr_inv_item_add(property_0, 
									property_1,
									property_2,
									property_3,
									property_4,
									property_5,
									property_6,
									noone)
}


if inv_gui_select_menu = 0 {
	//empty item from inventory slot
	inv[argument0, 0] = noone;
	inv[argument0, 1] = noone;
	inv[argument0, 2] = noone;
	inv[argument0, 3] = noone;
	inv[argument0, 4] = noone;
	inv[argument0, 5] = noone;
	inv[argument0, 6] = noone;
}

if inv_gui_select_menu = 1 {
	//empty item from equip slot
	inv_equip[argument0, 0] = noone;
	inv_equip[argument0, 1] = noone;
	inv_equip[argument0, 2] = noone;
	inv_equip[argument0, 3] = noone;
	inv_equip[argument0, 4] = noone;
	inv_equip[argument0, 5] = noone;
	inv_equip[argument0, 6] = noone;
}