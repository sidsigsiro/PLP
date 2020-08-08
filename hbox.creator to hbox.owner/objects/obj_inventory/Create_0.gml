/// @description Insert description here
// You can write your code in this editor
globalvar player_inventory, player_inventory_width;
player_inventory_width = 5
player_inventory = ds_grid_create(player_inventory_width, 1);
inventory_is_open = false

scr_item_add(player_inventory, "red berry", 1, "A red berry.", spr_chest, "");
scr_item_add(player_inventory, "blue berry", 1, "A blue berry.", spr_chest, "");
scr_item_add(player_inventory, "green berry", 1, "A green berry.", spr_chest, "");
scr_item_add(player_inventory, "purple berry", 1, "A purple berry.", spr_chest, "");
scr_item_add(player_inventory, "spear", 1, "A spear.", spr_chest, "");
scr_item_add(player_inventory, "dingwah", 1, "A dingwah!", spr_chest, "");
scr_item_add(player_inventory, "shutter shades", 1, "very cool shades.", spr_chest, "");
scr_item_add(player_inventory, "bitchin armour", 1, "protective and cool.", spr_chest, "");
scr_item_add(player_inventory, "secret sauce", 1, "unbearably spicy!", spr_chest, "");
scr_item_add(player_inventory, "fish net", 1, "can net many things.", spr_chest, "");
scr_item_add(player_inventory, "old heart coin", 1, "a token of luv <3.", spr_chest, "");
scr_item_add(player_inventory, "a different red berry", 1, "A darker red berry.", spr_chest, "");