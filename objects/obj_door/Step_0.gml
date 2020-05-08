/// @description Insert description here
// You can write your code in this editor

var num_enemy = instance_number(obj_portal) + instance_number(obj_enemy_male) + instance_number(obj_enemy_female);

if(num_enemy == 0){
	image_index = 1;
}