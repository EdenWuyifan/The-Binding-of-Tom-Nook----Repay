/// @description Insert description here
// You can write your code in this editor
if(global.shooting_spd > 10){
	global.shooting_spd -= 5;
	global.player_power += 1;
}

//sound
audio_play_sound(snd_powerup,0,0);