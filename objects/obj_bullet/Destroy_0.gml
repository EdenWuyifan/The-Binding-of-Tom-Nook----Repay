/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(global.bullet_shards) >= global.max_bullet_shards){
	ds_list_delete(global.bullet_shards,0);
}
ds_list_add(global.bullet_shards,[x,y]);