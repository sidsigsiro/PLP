///scr_inv_item_add_spear

//	inv LEGEND
/*
0,0 = item name
0,1 = item icon sprite
0, 2 = the script that will be used for the player state when the item is used
0, 3 = script to run when player attempts to equip the item from their inventory
*/

///@arg inv[0, 4]
///@arg inv[0, 5]
///@arg inv[0, 6]

var item_param_0 = "bow", //name
		item_param_1 = spr_bow, //sprite
		item_param_2 = scr_bow_state, //state
		item_param_3 = 1, //stat A (damage multiplyer)
		item_param_4 = 0.5, //stat B (stam cost)
		item_param_5 = noone, // inv_slot to use as arrow
		item_param_6 = scr_set_sprite_inventory_bow; //sprite set script




///check inventory slots and adds one to empty slot
if inv_equip[0,0] = noone {
	inv_equip[0, 0] = item_param_0;
	inv_equip[0, 1] = item_param_1;
	inv_equip[0, 2] = item_param_2;
	inv_equip[0, 3] = item_param_3;
	inv_equip[0, 4] = item_param_4;
	inv_equip[0, 5] = item_param_5;
	inv_equip[0, 6] = item_param_6 
} else if inv_equip[1,0] = noone {
	inv_equip[1, 0] = item_param_0;
	inv_equip[1, 1] = item_param_1;
	inv_equip[1, 2] = item_param_2;
	inv_equip[1, 3] = item_param_3;
	inv_equip[1, 4] = item_param_4;
	inv_equip[1, 5] = item_param_5;
	inv_equip[1, 6] = item_param_6;
}  else if inv_equip[2,0] = noone {
	inv_equip[2, 0] = item_param_0;
	inv_equip[2, 1] = item_param_1;
	inv_equip[2, 2] = item_param_2;
	inv_equip[2, 3] = item_param_3;
	inv_equip[2, 4] = item_param_4;
	inv_equip[2, 5] = item_param_5;
	inv_equip[2, 6] = item_param_6;
} else for(var i = 0; i <= inv_slots; i += 1) {
	if inv[i, 0] = noone {
		inv[i, 0] = item_param_0;
		inv[i, 1] = item_param_1;
		inv[i, 2] = item_param_2;
		inv[i, 3] = item_param_3;
		inv[i, 4] = item_param_4;
		inv[i, 5] = item_param_5;
		inv[i, 6] = item_param_6;
	} else if i = inv_slots {
		//create text "Too Full!"
	}
}




//
/*
///check inventory slots and adds one to empty slot
for(var i = 0; i <= inv_slots; i += 1) {
	if inv[i, 0] = noone {
		inv[i, 0] = "spear"; //name
		inv[i, 1] = spr_spear; //sprite
		inv[i , 2] = scr_spear_state; //state
		inv[i, 3] = 30; ///stat A (damage/ effectiveness)
		inv[i, 4] = noone; ///stat B
		inv[i, 5] = noone; /// special quality (fire/ piercing/ whatever)
		inv[i, 6] = scr_set_sprite_inventory_spear break;
	} else {
		if i = inv_slots {
		//create text "Too Full!"
		}
	}
}