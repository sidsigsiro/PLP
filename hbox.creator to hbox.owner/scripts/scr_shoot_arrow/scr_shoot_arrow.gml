///scr_drop_throw
//arg inv_slot

var property_0,
	property_1,
	property_2,
	property_3,
	property_4,
	property_5,
	property_6,
	dam_mult;

//set properties to equipped arrow from inv slot
property_0 = inv[inv_equip[item_in_use, 5], 0];
property_1 = inv[inv_equip[item_in_use, 5], 1];
property_2 = inv[inv_equip[item_in_use, 5], 2];
property_3 = inv[inv_equip[item_in_use, 5], 3];
property_4 = inv[inv_equip[item_in_use, 5], 4];
property_5 = inv[inv_equip[item_in_use, 5], 5];
property_6 = inv[inv_equip[item_in_use, 5], 6];

dam_mult = inv_equip[item_in_use, 3];


item_thrown = instance_create_layer(x, y, "instance_layer", obj_projectile);
item_thrown.phy_rotation = -aim;
item_thrown.owner = id;
with(item_thrown) {
	inv[0, 0] = property_0;
	inv[0, 1] = property_1;
	inv[0, 2] = property_2;
	inv[0, 3] = property_3;
	inv[0, 4] = 1;
	inv[0, 5] = property_5;
	inv[0, 6] = property_6;
	phy_fixed_rotation = true;
	physics_apply_force(x, y, lengthdir_x(10, owner.aim), lengthdir_y(10, owner.aim));
	dir = -phy_rotation;
	aim = dir;
	sprite_index = inv[0,1];
	dam_multiplier = dam_mult;
}

if profile.input_profile  != scr_input_profile_ai {
	inv[inv_equip[item_in_use, 5], 4] -= 1; //subtract from arrow count
}

if inv[inv_equip[item_in_use, 5], 4] <= 0 {
	scr_item_delete(inv_equip[item_in_use, 5]);
	inv_equip[item_in_use, 5] = noone;
	scr_set_sprite_arrowless();
}