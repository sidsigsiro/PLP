item_selected = clamp(--item_selected, 0, ds_grid_height(my_items) - 1);

if (item_selected < scrolled_amount) {
	--scrolled_amount;
}