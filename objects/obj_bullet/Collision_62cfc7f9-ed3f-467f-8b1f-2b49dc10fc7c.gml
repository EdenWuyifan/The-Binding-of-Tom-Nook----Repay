/// @description Insert description here
// You can write your code in this editor
other.blink = true;
instance_destroy();
other.hp -= global.player_power;

//sound
audio_play_sound(snd_hit,0,0);