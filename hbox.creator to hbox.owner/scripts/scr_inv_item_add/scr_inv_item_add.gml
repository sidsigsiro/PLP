///@func scr_inv_add

///@arg inv[0, 0]
///@arg inv[0, 1]
///@arg inv[0, 2]
///@arg inv[0, 3]
///@arg inv[0, 4]
///@arg inv[0, 5]
///@arg inv[0, 6]
///@arg not_equipable

if argument2 != ARROW {
	///check inventory slots and adds one to empty slot
	if inv_equip[0,0] = noone {
		inv_equip[0, 0] = argument0;
		inv_equip[0, 1] = argument1;
		inv_equip[0, 2] = argument2;
		inv_equip[0, 3] = argument3;
		inv_equip[0, 4] = argument4;
		inv_equip[0, 5] = argument5;
		inv_equip[0, 6] = argument6 
		if argument7 != noone { // destroy pickup if item is picked up
			with argument7 {
				instance_destroy();
			}
		}
	} else if inv_equip[1,0] = noone {
		inv_equip[1, 0] = argument0;
		inv_equip[1, 1] = argument1;
		inv_equip[1, 2] = argument2;
		inv_equip[1, 3] = argument3;
		inv_equip[1, 4] = argument4;
		inv_equip[1, 5] = argument5;
		inv_equip[1, 6] = argument6;
		if argument7 != noone {
			with argument7 {
				instance_destroy();
			}
		}
	} else if inv_equip[2,0] = noone {
		inv_equip[2, 0] = argument0;
		inv_equip[2, 1] = argument1;
		inv_equip[2, 2] = argument2;
		inv_equip[2, 3] = argument3;
		inv_equip[2, 4] = argument4;
		inv_equip[2, 5] = argument5;
		inv_equip[2, 6] = argument6;
		if argument7 != noone {
			with argument7 {
				instance_destroy();
			}
		}
	} else for(var i = 0; i <= inv_slots; i += 1) {
		if inv[i, 0] = noone {
			inv[i, 0] = argument0;
			inv[i, 1] = argument1;
			inv[i, 2] = argument2;
			inv[i, 3] = argument3;
			inv[i, 4] = argument4;
			inv[i, 5] = argument5;
			inv[i, 6] = argument6;
			if argument7 != noone {
				with argument7 {
					instance_destroy();
				}
			} break;
		} else {
			if i = inv_slots {
			//create text "Too Full!"
			}
		}
	}
} else {
	for(var i = 0; i <= inv_slots; i += 1) {
		if inv[i, 0] = noone {
			inv[i, 0] = argument0;
			inv[i, 1] = argument1;
			inv[i, 2] = argument2;
			inv[i, 3] = argument3;
			inv[i, 4] = argument4;
			inv[i, 5] = argument5;
			inv[i, 6] = argument6;
			if argument7 != noone {
				with argument7 {
					instance_destroy();
				}
			} break;
		} else if inv[i, 0] = argument0 {
				inv[i, 4] += argument4
				if argument7 != noone {
					with argument7 {
						instance_destroy();
					}
				} break;
			} else {
				if i = inv_slots {
				//create text "Too Full!"
				}
			}
		}
	}