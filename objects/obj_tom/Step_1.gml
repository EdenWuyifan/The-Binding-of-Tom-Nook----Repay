/// @description Insert description here
// You can write your code in this editor


if(global.makeNewRoom){
	var row = global.cur_room div 3;
	var col = global.cur_room mod 3;
	var type = ds_grid_get(global.minimap,col,row);
	x = new_pos_x;
	y = new_pos_y;
	if(type == 5 and boss_wait == true){
		room_goto(room_before_boss_fight);
		global.makeNewRoom = false;
	}
	script_create_room(type,row,col);
	global.makeNewRoom = false;
}