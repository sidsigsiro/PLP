///scr_inv_slots_remove



for(var i = ((inv_slots + 1) - argument0); i <= inv_slots; i++) {
	if inv[i, 0] != noone {
		scr_inv_item_drop(i);
	}
}

inv_slots -= argument0;