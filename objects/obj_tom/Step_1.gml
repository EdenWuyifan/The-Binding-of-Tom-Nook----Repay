/// @description Insert description here
// You can write your code in this editor
if(global.makeNewRoom){
	var row = global.cur_room div 3;
	var col = global.cur_room%3;
	
	script_create_room(ds_grid_get(global.minimap,col,row),row,col);
	x = new_pos_x;
	y = new_pos_y;
	global.makeNewRoom = false;
}