/// @description Insert description here
// You can write your code in this editor

if(other.sprite_index == spr_door_open and global.makeNewRoom == false){
	show_debug_message("Collide with door!!!!");
	if(other.dir == "U"){
		global.cur_room -= 3;
		new_pos_x = 288;
		new_pos_y = 352;
	}else if(other.dir == "D"){
		global.cur_room += 3;
		new_pos_x = 288;
		new_pos_y = 96;
	}else if(other.dir == "L"){
		global.cur_room -= 1;
		new_pos_x = 480;
		new_pos_y = 224;
	}else if(other.dir == "R"){
		global.cur_room += 1;
		new_pos_x = 96;
		new_pos_y = 224;
	}



	room_goto(ds_list_find_value(global.minimap_rooms,global.cur_room));
	
	global.makeNewRoom = true;
	
}