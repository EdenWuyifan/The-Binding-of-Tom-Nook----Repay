/// @description Insert description here
// You can write your code in this editor
if(global.player_max_hp<16){
	global.player_max_hp += 2;
}


//sound
audio_play_sound(snd_powerup,0,0);