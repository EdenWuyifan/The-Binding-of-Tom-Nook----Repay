/// @description Insert description here
// You can write your code in this editor


//bullet shards
for(var i = 0; i < ds_list_size(global.bullet_shards); i ++){
	var pos = ds_list_find_value(global.bullet_shards,i);
	draw_sprite_ext(spr_bullet,1,pos[0],pos[1],0.6,0.6,0,c_white,1);
}