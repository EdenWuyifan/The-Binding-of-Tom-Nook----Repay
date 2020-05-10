/// @description Insert description here
// You can write your code in this editor

var num_enemy = instance_number(obj_portal) + instance_number(obj_enemy_male) + instance_number(obj_enemy_female);

if(num_enemy == 0){
	var row = global.cur_room div 3;
	var col = global.cur_room mod 3;
	ds_grid_set(global.minimap_status,col,row,true);
	sprite_index = spr_door_open;
	solid = false;
}