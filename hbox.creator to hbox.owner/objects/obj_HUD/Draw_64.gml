/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var sub_img,
y_offset,
bar_size,
bar_alpha = 1,
char_sheet;



//player 1 HUD
if instance_exists(obj_character_sheet_1) {
	char_sheet = obj_character_sheet_1; 
	
for (var i = 0; i <= 1; i++) {
	sub_img = 1
	if i == 0 {
		y_offset = 0;
		bar_size = char_sheet.max_hp / 100;
	} else if i == 1 {
		y_offset = sprite_get_height(spr_hud_bars_outline) - 1;
		bar_size = char_sheet.max_stam / 100;
	}
		draw_sprite_ext(spr_hud_bars_outline, sub_img, camera_get_view_x(0) + 12, camera_get_view_y(0) + (12 + y_offset),
		bar_size, 1, 0, c_white, bar_alpha);
}
	
	for(var i = 0; i <= 3; i++) {
		if i < 2 {
			//health and armour
			y_offset = 0;
		} else {
			//stam and hunger
			y_offset = sprite_get_height(spr_hud_bars_outline) - 1;
		}
		
		sub_img = i;
		
		if i == 0 {
			bar_size = char_sheet.hp / 100;
		} else if i == 1 {
			bar_size = char_sheet.armour / 100;
			bar_alpha = 0.65
		} else if i == 2 {
			if char_sheet.stam >= 0 {
				bar_size = char_sheet.stam / 100;
							bar_alpha = 1
			} else {
				sub_img = 3;
				bar_size = (char_sheet.stam / 100) * -1;
			}
		} else if i == 3 {
			bar_size = char_sheet.hunger / 100;
		}
		
		draw_sprite_ext(spr_hud_bars, sub_img, camera_get_view_x(0) + 13, camera_get_view_y(0) + (12 + y_offset),
		bar_size, 1, 0, c_white, bar_alpha);
		
	}
}

for (var i = 0; i <= 1; i++) {
	sub_img = 0
	if i == 0 {
		y_offset = 0;
		bar_size = char_sheet.max_hp / 100;
	} else if i == 1 {
		y_offset = sprite_get_height(spr_hud_bars_outline) - 1;
		bar_size = char_sheet.max_stam / 100;
	}
		draw_sprite_ext(spr_hud_bars_outline, sub_img, camera_get_view_x(0) + 12, camera_get_view_y(0) + (12 + y_offset),
		bar_size, 1, 0, c_white, bar_alpha);
}