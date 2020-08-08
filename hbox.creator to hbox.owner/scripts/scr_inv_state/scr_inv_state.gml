///scr_inv_state();

//inv_gui_select_menu  0 = inventory
//									1 = equipped items
//									2 = clothes

draw_gui_inv = true;



													//INV_MENU
if inv_gui_select_menu = 0 {
//navigate menu
	var inv_gui_select_dir;
	switch (key_left_pressed or key_right_pressed) {
		case key_left_pressed :
			inv_gui_select_dir = -1;
			break;
		case key_right_pressed :
			inv_gui_select_dir = 1;
			break;
	}
	if key_left_pressed or key_right_pressed {
		inv_gui_select += inv_gui_select_dir;
		if inv_gui_select > inv_slots {
			inv_gui_select = 0;
		}
		if inv_gui_select < 0 {
			inv_gui_select = inv_slots;
		}
	}
	if key_down_pressed {
		inv_gui_select = 0;
		inv_gui_select_menu += 1;
	}
	if key_up_pressed {
		if search_target = noone {
			inv_gui_select_menu = 2;
		} else {
			state = scr_inv_search_state;
		}	
	}
//
	var equip_slot, equip_script;
	switch (key_item_0 or key_item_1 or key_item_2) {
		case key_item_0:
			equip_slot = 0;
			break;
		case key_item_1:
			equip_slot = 1;
			break;
			case key_item_2:
			equip_slot = 2;
			break;
	}
	if key_item_0 or key_item_1 or key_item_2{
		if inv[inv_gui_select, 2] == HAT { 		//check if hat, then equip
			equip_script = inv[inv_gui_select, 6];
			script_execute(equip_script);
			scr_equip_hat();
		}
		if inv[inv_gui_select, 2] == SHIRT { 		//check if shirt, then equip
			equip_script = inv[inv_gui_select, 6];
			script_execute(equip_script);
			scr_equip_shirt();
		} else if inv[inv_gui_select, 2] == BAG { 		//check if bag, then equip
			equip_script = inv[inv_gui_select, 6];
			script_execute(equip_script);
			scr_equip_bag();
		} else if inv[inv_gui_select, 2] == PANTS {		//check if pants, then equip
			equip_script = inv[inv_gui_select, 6];
			script_execute(equip_script);
			scr_equip_pants();
		} else if inv[inv_gui_select, 2] == ARROW {
			if inv_equip[equip_slot, 2] == scr_bow_state { //check if equip slot has bow
				if inv_equip[equip_slot, 5] != inv_gui_select {
					inv_equip[equip_slot, 5] = inv_gui_select
					equip_script = inv[inv_gui_select, 6];
					script_execute(equip_script);
				} else {
					inv_equip[equip_slot, 5] = noone
					equip_script = scr_set_sprite_arrowless
					script_execute(equip_script);
				}
			}
		} else if inv[inv_gui_select, 0] != noone  {		//equip item
				scr_equip_item(equip_slot);
		}
	}
} else

													//EQUIP_MENU
if inv_gui_select_menu = 1 {
	//looking at item 0
	if inv_gui_select = 0 {
		if key_down_pressed {
			inv_gui_select += 1;
		}
		if key_up_pressed {
			inv_gui_select_menu = 0;
		}
		if key_item_0 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_unequip_item(0);
			}
		}
		if key_item_1 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(1);
			}
		}
		if key_item_2 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(2);
			}
		}
	} else
	//looking at item 1
	if inv_gui_select = 1 {
		if key_down_pressed {
			inv_gui_select += 1;
		}
		if key_up_pressed {
			inv_gui_select -= 1;
		}
		if key_item_0 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(0)
			}
		}
		if key_item_1 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_unequip_item(1)
			}
		}
		if key_item_2 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(2);
			}
		}
	} else 
	//looking at item 2
	if inv_gui_select = 2 {
		if key_down_pressed {
			inv_gui_select_menu = 2;
			inv_gui_select = 0;
		}
		if key_up_pressed {
			inv_gui_select -= 1;
		}
		if key_item_0 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(0)
			}
		}
		if key_item_1 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_equip_item(1);
			}
		}
		if key_item_2 {
			if inv_equip[inv_gui_select, 0] != noone {
				scr_unequip_item(2)
			}
		}
	}
} else

													//CLOTHES_MENU
if inv_gui_select_menu = 2 {
//navigate menu
	var inv_gui_select_dir;
	switch (key_left_pressed or key_right_pressed) {
		case key_left_pressed :
			inv_gui_select_dir = -1;
			break;
		case key_right_pressed :
			inv_gui_select_dir = 1;
			break;
	}
	if key_left_pressed or key_right_pressed {
		inv_gui_select += inv_gui_select_dir;
		if inv_gui_select > inv_clothes_slots {
			inv_gui_select = 0;
		}
		if inv_gui_select < 0 {
			inv_gui_select = inv_clothes_slots;
		}
	}
	if key_down_pressed {
		if search_target = noone {
			inv_gui_select_menu = 0;
		} else {
			state = scr_inv_search_state;
		}
	}
	if key_up_pressed {
		inv_gui_select_menu = 1;
		inv_gui_select = 2;
	}
	if key_item_0 or key_item_1 {
		if inv_clothes[inv_gui_select, 0] != noone {
			scr_unequip_clothes();
		}
	}
//	
}

if search_target != noone {
	if key_interact {
		scr_inv_item_transfer(id, search_target)
	}
	if key_inv_pressed {
		search_target.draw_gui_inv = false;
		state = state_default;
	}
}

if key_inv_pressed {
	state = state_default;
}