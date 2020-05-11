/// @description Insert description here
// You can write your code in this editor
randomize();

var drop = irandom_range(1,30);

if(drop <= 4){
	instance_create_layer(x-32,y-32,"Instances",obj_hprecover);
}else if(drop <= 10){
	instance_create_layer(x,y,"Instances",obj_bombup);
}else if(drop <= 13){
	instance_create_layer(x,y,"Instances",obj_powerup);
}else if(drop <= 16){
	instance_create_layer(x,y,"Instances",obj_hpup);
}