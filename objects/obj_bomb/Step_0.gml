/// @description Insert description here
// You can write your code in this editor

if(speed > 0){
	speed *= slowdown;
}

if(place_meeting(x,y,obj_wall) or place_meeting(x,y,obj_box)){
	if(direction == 0 or direction == 180){
		direction += 180;
	}else{
		direction *= -1;
	}
}


if(sprite_index == spr_explosion and image_index == image_number-1){
	instance_destroy();
}