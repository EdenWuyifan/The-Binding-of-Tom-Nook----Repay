/// @description Insert description here
// You can write your code in this editor



//timer
wait_timer = 0;
shoot_timer = 50;

//player
global.player_speed = 5;
global.max_bullets = 20;
global.player_max_hp = 6;
global.player_hp = 6;
global.player_facing = 0;
global.power_time = 50;
global.is_hitted = false;

global.bells = 10000;
global.is_bombing = false;

global.is_shooting = false;
global.bullet_spd = 8;
global.shooting_spd = 30;


//enemies
global.enemies = ds_list_create();
global.bullet_spd_enemy = 3;

//fracs
global.max_bullet_shards = 20;
global.bullet_shards = ds_list_create();


//create_player

instance_create_layer(room_width/2,room_height/2,"Instances",obj_tom);