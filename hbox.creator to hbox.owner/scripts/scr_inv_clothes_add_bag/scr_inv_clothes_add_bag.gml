///scr_inv_clothes_add_shirt

//	inv LEGEND
/*
0,0 = item name
0,1 = item icon sprite
0, 2 = the script that will be used for the player state when the item is used
0, 3 = script to run when player attempts to equip the item from their inventory
*/

var property_0 = "bag",
	property_1 = spr_bag_walk_up,
	property_2 = BAG,
	property_3 = 0,
	property_4 = 4, //inv slots
	property_5 = "A small leather travel bag",
	property_6 = scr_set_sprite_bag;

//check if bag is equipped and, if not, auto equip it
if inv_clothes[3, 0] = noone {
	inv_clothes[3, 0] = property_0;
	inv_clothes[3, 1] = property_1;
	inv_clothes[3, 2] = property_2;
	inv_clothes[3, 3] = property_3;
	inv_clothes[3, 4] = property_4;
	inv_clothes[3, 5] = property_5;
	inv_clothes[3, 6] = property_6;
	script_execute(property_6)
} else {
	///check inventory slots and adds one to empty slot
	for(var i = 0; i <= inv_slots; i += 1) {
		if inv[i, 0] = noone {
			inv[i, 0] = property_0;
			inv[i, 1] = property_1;
			inv[i, 2] = property_2;
			inv[i, 3] = property_3;
			inv[i, 4] = property_4;
			inv[i, 5] = property_5;
			inv[i,6] = property_6 break;
		
		} else {
			if i = inv_slots {
			//create text "Too Full!"
			}
		}
	}
}