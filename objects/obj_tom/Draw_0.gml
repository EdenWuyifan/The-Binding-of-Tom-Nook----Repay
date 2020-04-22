/// @description Insert description here
// You can write your code in this editor

if(move_x>0){
	sprite_index = spr_tom_walk_right;
}else if(move_x<0){
	sprite_index = spr_tom_walk_left;
}else if(move_y<0){
	sprite_index = spr_tom_walk_up;
}else if(move_y>0){
	sprite_index = spr_tom_walk_down;
}else{
	sprite_index = spr_tom_still;
}


draw_self();

