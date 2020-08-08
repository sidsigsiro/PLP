/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_down) {
	scr_scroll_down();
}

if keyboard_check_pressed(vk_up) {
	scr_scroll_up();
}

x = obj_p1.x
y= obj_p1.y - 20