item_selected = clamp(++item_selected, 0, ds_grid_height(my_items) - 1);

//increase scrolled amount when player is scrolls past max items displayed
if (item_selected > inventory_end_at + scrolled_amount) {
	++scrolled_amount;
	++inventory_on_screen;
}

//clamp the scrolled amount from going beyond amount of items player has
if (scrolled_amount + inventory_on_screen > ds_grid_height(my_items)) {
	--scrolled_amount;
}