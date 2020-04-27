/// @description Insert description here
// You can write your code in this editor

//timer
wait_timer = 0;
shoot_timer = 50;

//player
global.max_bullets = 20;
global.player_hp = 3;
global.player_facing = 0;

global.is_shooting = false;
global.shooting_dir = 0;
global.bullet_spd = 5;


//enemies
global.enemies = ds_list_create();

