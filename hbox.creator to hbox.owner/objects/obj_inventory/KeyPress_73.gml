/// @description Insert description here
// You can write your code in this editor


if inventory_is_open = false {
	inventory_display = instance_create_depth(0, 0, depth -1, obj_inventory_GUI);
	with(inventory_display) {
		//x = obj_p1.x;
		//y = obj_p1.y - 20;
		//x = sprite_get_xoffset(sprite_index);
		//y = room_height - sprite_get_yoffset(sprite_index);
	}
	inventory_is_open = true;
} else {
	with(obj_inventory_GUI) {
		instance_destroy();
	}
	inventory_is_open = false;
}