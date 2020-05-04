/// @description Insert description here
// You can write your code in this editor



//death
if(hp == 0){
	instance_destroy();
}


mp_potential_step_object(obj_tom.x,obj_tom.y,spd,obj_box);

//shoot
shooting_timer ++;
if(shooting_timer == 60){
	instance_create_layer(x,y,"Instances",obj_enemy_bullet);
	shooting_timer = 0;
}