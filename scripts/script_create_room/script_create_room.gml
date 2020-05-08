room_type = argument0;
minimap_row = argument1;
minimap_col = argument2;


show_debug_message(room_type);
show_debug_message(minimap_row);
show_debug_message(minimap_col);

//get the arranged grid
var room_grid = ds_list_find_value(global.rooms,room_type-1);


//background
background_color = c_black;
var bg = layer_background_get_id("Background");
layer_background_sprite(bg, spr_floor);

//create layer
layer_create(-200,"Instances");



for(var col = 0; col < 7; col++){
	for(var row = 0; row < 5; row++){
		//door
		if(ds_grid_get(room_grid,col,row) == 1){
			if(row == 0 and col == 3 and minimap_row != 0){
				var door = instance_create_layer(96+col*64, 34+row*64,"Instances",obj_door);
				door.image_angle = 0;
				door.dir = "U";
			}
			if(row == 4 and col == 3 and minimap_row != 2){
				var door = instance_create_layer(96+col*64, 158+row*64,"Instances",obj_door);
				door.image_angle = 180;
				door.dir = "D";
			}
			if(row == 2 and col == 0 and minimap_col != 0){
				var door = instance_create_layer(34+col*64, 96+row*64,"Instances",obj_door);
				door.image_angle = 90;
				door.dir = "L";
			}
			if(row == 2 and col == 6 and minimap_col != 2){
				var door = instance_create_layer(158+col*64, 96+row*64,"Instances",obj_door);
				door.image_angle = 270;
				door.dir = "R";
			}
		}else{
			//box
			if(ds_grid_get(room_grid,col,row) == 2){
				var box = instance_create_layer(64+col*64, 64+row*64,"Instances",obj_box);
				box.depth = 50;
			}
			//portal
			else if(ds_grid_get(room_grid,col,row) == 3){
				var portal = instance_create_layer(64+col*64, 64+row*64,"Instances",obj_portal);
				portal.depth = -50;
			}
		}	
	}
}


//wall
for(var i = 0; i < 9; i ++){
	instance_create_layer(64*i,0,"Instances",obj_wall);
	instance_create_layer(64*i,384,"Instances",obj_wall);
}
for(var i = 0; i < 5; i ++){
	var wall = instance_create_layer(0,128+64*i,"Instances",obj_wall);
	wall.image_angle = 90;
	var wall = instance_create_layer(512,128+64*i,"Instances",obj_wall);
	wall.image_angle = 90;
}