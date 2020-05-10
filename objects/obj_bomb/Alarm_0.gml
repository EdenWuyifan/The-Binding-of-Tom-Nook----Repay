/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_explosion;
image_xscale = 4.0;
image_yscale = 4.0;

var list = ds_list_create();
collision_rectangle_list(x-128,y-128,x+128,y+128,obj_box,false,true,list,false);



for(var i = 0;i<ds_list_size(list);i++){
	var box = ds_list_find_value(list,i);
	box.available = false;
}

ds_list_clear(list);
collision_rectangle_list(x-128,y-128,x+128,y+128,obj_enemy_male,false,true,list,false);
collision_rectangle_list(x-128,y-128,x+128,y+128,obj_enemy_female,false,true,list,false);
collision_rectangle_list(x-128,y-128,x+128,y+128,obj_boss,false,true,list,false);

for(var i = 0;i<ds_list_size(list);i++){
	var enemy = ds_list_find_value(list,i);
	enemy.blink = true;
	enemy.hp -= 5;
}
global.is_bombing = false;