/// @description Insert description here
// You can write your code in this editor

wait_timer++;
shoot_timer++;

//shooting dir
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
space = keyboard_check(vk_space);

//shooting
global.is_shooting = false;
if(up or down or left or right){
	global.is_shooting = true;
}

//bullets control
num_of_bullet = instance_number(obj_bullet);
if(num_of_bullet < global.max_bullets){
	if(global.is_shooting and shoot_timer >= global.shooting_spd){
		shoot_timer = 0;
		curr_bullet = instance_create_layer(obj_tom.x,obj_tom.y,"Instances",obj_bullet);
		if(up){
			curr_bullet.direction = 90;
		}else if(down){
			curr_bullet.direction = 270;
		}
		else if(left){
			curr_bullet.direction = 180;
		}else if(right){
			curr_bullet.direction = 0;
		}
	}
	
}