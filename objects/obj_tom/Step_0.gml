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
}else if(place_meeting(x + move_x,y,obj_box)){
	while(!place_meeting(x + sign(move_x),y,obj_box)){
		x += sign(move_x);
	}
}else{
	x += move_x;
}

if(place_meeting(x,y+move_y,obj_wall)){
	while(!place_meeting(x,y + sign(move_y),obj_wall)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_box)){
	while(!place_meeting(x,y + sign(move_y),obj_box)){
		y += sign(move_y);
	}
}else{
	y += move_y;
}


//power time
if(power_timer != 0){
	power_timer --;
}else{
	global.is_hitted = false;
}


//boss fight
if(room == room_before_boss_fight){
	wait_timer ++;
}
if(wait_timer == 120){
	wait_timer = 0;
	room_goto(ds_list_find_value(global.minimap_rooms,global.cur_room));
	global.makeNewRoom = true;
	boss_wait = false;
}


//bgm

if(audio_is_playing(snd_bossfight)){
	audio_stop_sound(snd_bgm);
}