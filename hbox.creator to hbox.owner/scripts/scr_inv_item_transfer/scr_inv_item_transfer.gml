///scr_inv_item_transfer
///@arg item_giver
///@arg item_receiver

var item_giver = argument0, item_receiver = argument1,

for (i = 0; i <= item_receiver.inv_slots; i++) {
							//name
	if item_receiver.inv[i, 0] = noone {

								//name
		if item_giver.inv[item_giver.inv_gui_select,0] != noone {
			
			item_receiver.inv[i, 0] = item_giver.inv[item_giver.inv_gui_select,0];
			item_giver.inv[item_giver.inv_gui_select,0] = noone;
										//sprite
			item_receiver.inv[i, 1] = item_giver.inv[item_giver.inv_gui_select,1];
			item_giver.inv[item_giver.inv_gui_select,1] = noone;
										//item_state
			item_receiver.inv[i, 2] = item_giver.inv[item_giver.inv_gui_select,2];
			item_giver.inv[item_giver.inv_gui_select,2] = noone;
										//item_equip_script
			item_receiver.inv[i, 3] = item_giver.inv[item_giver.inv_gui_select,3];
			item_giver.inv[item_giver.inv_gui_select,3] = noone;
			
		}
	}
}
		
		