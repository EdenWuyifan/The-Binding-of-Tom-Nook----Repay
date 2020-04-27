/// @description Insert description here
// You can write your code in this editor
//depth
depth = -y;

//key
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


move_x = (right - left) * spd;
move_y = (down - up) * spd;

//collision
if(place_meeting(x + move_x,y,obj_wall)){
	while(!place_meeting(x + sign(move_x),y,obj_wall)){
		x += sign(move_x);
	}
}else{
	x += move_x;
}

if(place_meeting(x,y+move_y,obj_wall)){
	while(!place_meeting(x,y + sign(move_y),obj_wall)){
		y += sign(move_y);
	}
}else{
	y += move_y;
}