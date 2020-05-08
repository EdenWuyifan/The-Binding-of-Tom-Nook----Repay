/// @description Insert description here
// You can write your code in this editor

num = irandom(1);

if(num == 0){
	instance_create_layer(x+32,y+32,"Instances",obj_enemy_male);
}else{
	instance_create_layer(x+32,y+32,"Instances",obj_enemy_female);
}

total_enemy_num --;
alarm[0] = room_speed * 3;