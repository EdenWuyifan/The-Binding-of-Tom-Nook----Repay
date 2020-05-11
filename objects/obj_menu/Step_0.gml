/// @description Insert description here
// You can write your code in this editor

up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
enter = keyboard_check_pressed(vk_enter);

if(cur_pos > 0 and up){
	//sound
	audio_play_sound(snd_player_shoot,0,0);
	
	cur_pos--;
}
if(cur_pos < 2 and down){
	//sound
	audio_play_sound(snd_player_shoot,0,0);
	
	
	cur_pos++;
}


if(room == room_menu and enter){
	//sound
	audio_play_sound(snd_powerup,0,0);
	
	if(cur_pos == 0){
		room_goto(room_start);
	}else if(cur_pos == 1){
		room_goto(room_guide);
	}else{
		game_end();
	}
}else if(room == room_clear){
	if(enter){
		//sound
		audio_play_sound(snd_powerup,0,0);
		
		room_goto(room_menu);
	}
}else if(room == room_dead){
	if(enter){
		//sound
		audio_play_sound(snd_powerup,0,0);
		
		room_goto(room_menu);
	}
}else if(room == room_guide){
	if(enter){
		//sound
		audio_play_sound(snd_powerup,0,0);
		
		room_goto(room_menu);
	}
}

