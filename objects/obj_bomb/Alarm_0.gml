/// @description Insert description here
// You can write your code in this editor

alarm[1] = 3;

//sound
audio_play_sound(snd_bomb,0,0);

sprite_index = spr_explosion;
image_xscale = 4.0;
image_yscale = 4.0;

var list = ds_list_create();
collision_rectangle_list(x-96,y-96,x+96,y+96,obj_box,false,true,list,false);



for(var i = 0;i<ds_list_size(list);i++){
	var box = ds_list_find_value(list,i);
	if(box.available){
		box.available = false;
		randomize();
	
	
		//box drop items
		var drop = irandom_range(1,30);

		if(drop <= 4){
			instance_create_layer(box.x+32,box.y+32,"Instances",obj_hprecover);
		}else if(drop <= 10){
			instance_create_layer(box.x+32,box.y+32,"Instances",obj_bombup);
		}else if(drop <= 13){
			instance_create_layer(box.x+32,box.y+32,"Instances",obj_powerup);
		}else if(drop <= 16){
			instance_create_layer(box.x+32,box.y+32,"Instances",obj_hpup);
		}
	}
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