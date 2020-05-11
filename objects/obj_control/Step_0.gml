/// @description Insert description here
// You can write your code in this editor
shoot_timer++;

//shooting dir
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
space = keyboard_check(vk_space);



//player dead
if(global.player_hp <= 0){
	instance_deactivate_all(false);
	room_goto(room_dead);
	//sound
	audio_stop_sound(snd_bgm);
	audio_play_sound(snd_lose,0,0);
}

//shooting
global.is_shooting = false;
if(up or down or left or right){
	global.is_shooting = true;
}

//bullets control
num_of_bullet = instance_number(obj_bullet);
if(instance_exists(obj_tom) and num_of_bullet < global.max_bullets){
	if(global.bells > 0 and global.is_shooting and shoot_timer >= global.shooting_spd){
		
		//sound
		audio_play_sound(snd_player_shoot,0,0);
		
		shoot_timer = 0;
		var curr_bullet = instance_create_layer(obj_tom.x,obj_tom.y,"Instances",obj_bullet);
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
		global.bells --;
	}
	
}

//bomb
if(global.bells >= 8 and !global.is_bombing and space){
	var bomb = instance_create_layer(obj_tom.x,obj_tom.y,"Instances",obj_bomb);
	if(obj_tom.move_x == 0 and obj_tom.move_y == 0){
		bomb.direction = 90;
		bomb.speed = 0;
	}else if(obj_tom.move_x > 0 and obj_tom.move_y < 0){
		bomb.direction = 45;
	}else if(obj_tom.move_x > 0 and obj_tom.move_y > 0){
		bomb.direction = 315;
	}else if(obj_tom.move_x < 0 and obj_tom.move_y < 0){
		bomb.direction = 135;
	}else if(obj_tom.move_x < 0 and obj_tom.move_y > 0){
		bomb.direction = 225;
	}else if(obj_tom.move_x > 0 and obj_tom.move_y = 0){
		bomb.direction = 0;
	}else if(obj_tom.move_x = 0 and obj_tom.move_y < 0){
		bomb.direction = 90;
	}else if(obj_tom.move_x < 0 and obj_tom.move_y = 0){
		bomb.direction = 180;
	}else if(obj_tom.move_x = 0 and obj_tom.move_y > 0){
		bomb.direction = 270;
	}
	global.is_bombing = true;
	global.bells -= 8;
}


