/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_colour(my_colour);
draw_text(bbox_left + text_border, bbox_top + text_border, "image");
draw_text(bbox_left + 125, bbox_top + text_border, "name");
draw_text(bbox_left + 225, bbox_top + text_border, "amount");

item_left_start = bbox_left + 120;
item_top_start = bbox_top + 48;

for(i = 0; i < inventory_end_at; i += 1) {
	for(j = 0; j < player_inventory_width; ++j) {
		inventory_on_screen = i;
		if (j == 0) { //draw name
			draw_text(item_left_start, item_top_start + (i* 32), ds_grid_get(my_items, 0, i + scrolled_amount));
		}
		if (j == 1) { //draw amount
			draw_text(item_left_start + 140, item_top_start + (i * 32), ds_grid_get(my_items, 1, i + scrolled_amount));
		}
		if (j == 3) {
			draw_sprite(ds_grid_get(my_items, j, i + scrolled_amount), 0, bbox_left + 40, item_top_start + (i * 32) + 16)
		}
	}
}
draw_rectangle(bbox_left + text_border, item_top_start + ((item_selected - scrolled_amount) * 32), bbox_right - text_border, item_top_start + (item_selected- scrolled_amount * 32) + 32, true);

//draw_sprite(spr_item_box, 0, sprite_get_xoffset(spr_item_box), camera_get_view_height(view_camera[0]) - sprite_get_yoffset(spr_item_box));

if(is_empty) {
	draw_text_ext(bbox_right + 50, camera_get_view_height(view_camera[0]) - sprite_get_yoffset(spr_item_box) - 100, empty_message, 32, sprite_get_width(spr_item_box) - text_border);
} else {
	draw_text_ext(bbox_right + 15, camera_get_view_height(view_camera[0]) - sprite_get_yoffset(spr_item_box) - 100, ds_grid_get(my_items, 2, item_selected), 32, sprite_get_width(spr_item_box) - text_border);
}