/// @description Insert description here
// You can write your code in this editor


if(hp <= 0){
	instance_destroy();
		
}

attack_timer ++;
image_index = 0;
if(attack_timer >= 60 and attack_timer < 100){
	if(hp>100){
		mp_potential_step_object(obj_tom.x,obj_tom.y,1,obj_wall);
	}else{
		mp_potential_step_object(obj_tom.x,obj_tom.y,2,obj_wall);
	}
}
if(attack_timer == 100){
	//sound
	audio_play_sound(snd_enemy_shoot,0,0);
	if(hp > 100){
		for(var i=0;i<3;i++){
			var bullet = instance_create_layer(x,y,"Instances",obj_bullet_boss);
			bullet.direction = point_direction(x,y,obj_tom.x,obj_tom.y) + 30*(i-1);
		}
	}else{
		for(var i=0;i<5;i++){
			var bullet = instance_create_layer(x,y,"Instances",obj_bullet_boss);
			bullet.direction = point_direction(x,y,obj_tom.x,obj_tom.y) + 30*(i-2);
		}
	}
	
}

if(attack_timer == 120){
	//sound
	audio_play_sound(snd_enemy_shoot,0,0);
	if(hp > 100){
		for(var i=0;i<5;i++){
			var bullet = instance_create_layer(x,y,"Instances",obj_bullet_boss);
			bullet.direction = point_direction(x,y,obj_tom.x,obj_tom.y) + 30*(i-2);
		}
	}else{
		for(var i=0;i<15;i++){
			var bullet = instance_create_layer(x,y,"Instances",obj_bullet_boss);
			bullet.direction = 24*i;
		}
	}
	attack_timer = 0;
}


//image index
if((attack_timer >= 100 and attack_timer <= 110) or (attack_timer >= 120 and attack_timer <= 130)){
	image_index = 1;
}