/// @description Insert description here
// You can write your code in this editor

instance_destroy();
for(var i = 0;i < 8; i ++){
	var coin = instance_create_layer(x,y,"Instances",obj_bullet);
	coin.direction = i*45;
}

global.is_bombing = false;