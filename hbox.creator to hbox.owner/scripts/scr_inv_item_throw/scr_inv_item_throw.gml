///scr_drop_throw
//arg inv_slot

var property_0,
	property_1,
	property_2,
	property_3,
	property_4,
	property_5,
	property_6;

//drop item from inventory slot
property_0 = inv_equip[argument0, 0];
property_1 = inv_equip[argument0, 1];
property_2 = inv_equip[argument0, 2];
property_3 = inv_equip[argument0, 3];
property_4 = inv_equip[argument0, 4];
property_5 = inv_equip[argument0, 5];
property_6 = inv_equip[argument0, 6];


item_thrown = instance_create_layer(x, y, "instance_layer", obj_projectile);
item_thrown.phy_rotation = -aim;
item_thrown.owner = id;
with(item_thrown) {
	inv[0, 0] = property_0;
	inv[0, 1] = property_1;
	inv[0, 2] = property_2;
	inv[0, 3] = property_3;
	inv[0, 4] = property_4;
	inv[0, 5] = property_5;
	inv[0, 6] = property_6;
	phy_fixed_rotation = true;
	physics_apply_force(x, y, lengthdir_x(10, owner.aim), lengthdir_y(10, owner.aim));
	dir = -phy_rotation;
	aim = dir;
	sprite_index = inv[0,1];
	phy_linear_damping = 1;
}

var item_to_delete = argument0;

inv_equip[item_to_delete, 0] = noone
inv_equip[item_to_delete, 1] = noone
inv_equip[item_to_delete, 2] = noone
inv_equip[item_to_delete, 3] = noone
inv_equip[item_to_delete, 4] = noone
inv_equip[item_to_delete, 5] = noone
inv_equip[item_to_delete, 6] = noone