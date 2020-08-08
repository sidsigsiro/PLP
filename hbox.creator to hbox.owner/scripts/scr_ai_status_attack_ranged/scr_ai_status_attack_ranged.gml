///scr_ai_status_attack_melee
//scr_ai_move_code(id, ai_target);
path_end();

if alarm[2] == -1 {
	alarm[2] = global.game_speed*0.5
}

if ranged_slot = noone {
	if scr_ai_status_check_nearest_pickup(scr_bow_state) = true {
		ai_status = scr_ai_status_pickup;
	} else {
		ai_status = scr_ai_status_roll_new;
	}
}
//if (point_distance(x, y, ai_target.x, ai_target.y) <= 32) {
	//ai_status = scr_ai_status_roll_new;
//} else {
	if alarm[2] > 0 {
		if ranged_slot = 0 {
			key_item_0 = 1;
			key_item_0_held = 1;
		} else if ranged_slot = 1 {
			key_item_1 = 1;
			key_item_1_held = 1
		} else if ranged_slot = 2 {
			key_item_2 = 1;
			key_item_2_held = 1;
		}
	} else {
		scr_ai_move_code(id, ai_target)
		key_item_0_held = 0
		key_item_0_released = 1
		key_item_1_held = 0
		key_item_1_released = 1
		key_item_2_held = 0
		key_item_2_released = 1
		ai_status = scr_ai_status_roll_new;
	} 

//}

/*
some = 4;
val = variable_instance_get(self.id, "some"); // 4
variable_instance_set(self.id, "some", val + 1);
show_debug_message(some); // 5
*/