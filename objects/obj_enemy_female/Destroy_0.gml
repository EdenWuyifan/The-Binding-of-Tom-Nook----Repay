/// @description Insert description here
// You can write your code in this editor
randomize();

var drop = irandom_range(1,10);

if(drop <= 3){
	instance_create_layer(x-32,y-32,"Instances",obj_hprecover);
}else if(drop <= 5){
	instance_create_layer(x,y,"Instances",obj_bombup);
}else if(drop <= 6){
	instance_create_layer(x,y,"Instances",obj_powerup);
}