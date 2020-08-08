///scr_interact
if key_interact {
	var item_to_pickup = collision_circle(x, y, 6, obj_pickup, false, true)
	if item_to_pickup {
		var is_clothes = true	//assume the item your picking up is clothes unless proven otherwise
		for(var i = 0; i <= item_to_pickup.inv_clothes_slots; i++) {
			if item_to_pickup.inv_clothes[i, 0] != noone {
				scr_inv_clothes_add(item_to_pickup.inv_clothes[i, 0],
											   item_to_pickup.inv_clothes[i, 1],
											   item_to_pickup.inv_clothes[i, 2],
											   item_to_pickup.inv_clothes[i, 3],
											   item_to_pickup.inv_clothes[i, 4],
											   item_to_pickup.inv_clothes[i, 5],
											   item_to_pickup.inv_clothes[i, 6],
											   item_to_pickup)
				break;
			} else {
				if i == item_to_pickup.inv_clothes_slots {
					is_clothes = false;
				}
			}
		}
		if is_clothes = false {
			scr_inv_item_add(item_to_pickup.inv[0, 0], 
									  item_to_pickup.inv[0, 1],
									  item_to_pickup.inv[0, 2],
									  item_to_pickup.inv[0, 3],
									  item_to_pickup.inv[0, 4],
									  item_to_pickup.inv[0, 5],
									  item_to_pickup.inv[0, 6],
									  item_to_pickup)
		}
	}
	if collision_circle(x, y, 25, obj_chest, false,true) {
		interact_target = collision_circle(x, y, 25, obj_chest, false,true);
		search_target = interact_target
		state = scr_inv_search_state;
	}
}