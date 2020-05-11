/// @description Insert description here
// You can write your code in this editor
//move
spd = global.player_speed;
move_x = 0;
move_y = 0;

new_pos_x = x;
new_pos_y = y;

//depth
depth = -y;

//power
power_timer = 0;

//boss wait
wait_timer = 0;
boss_wait = true;

//sound
if(!audio_is_playing(snd_bgm)){
	audio_play_sound(snd_bgm,0,1);
}