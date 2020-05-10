/// @description Insert description here
// You can write your code in this editor

if(blink){
	shader_set(shader_enemy_hitted);
	draw_self();
	shader_reset();
	
	if(alarm[0] == -1){
		alarm[0] = blink_duration;
	}
}else{
	draw_self();
}

