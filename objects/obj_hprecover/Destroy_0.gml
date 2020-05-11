/// @description Insert description here
// You can write your code in this editor
if(global.player_hp < global.player_max_hp){
	global.player_hp ++;
}

//sound
audio_play_sound(snd_powerup,0,0);