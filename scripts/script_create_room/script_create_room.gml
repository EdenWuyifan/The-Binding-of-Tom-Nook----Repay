room_type = argument0;
minimap_row = argument1;
minimap_col = argument2;



//room status
status = ds_grid_get(global.minimap_status,minimap_col,minimap_row);



//clear post settings
global.is_bombing = false;
ds_list_clear(global.bullet_shards);


show_debug_message(room_type);
show_debug_message(minimap_row);
show_debug_message(minimap_col);

//get the arranged grid
var room_grid = ds_list_find_value(global.rooms,room_type-1);


//background
//background_color = c_black;
layer_create(100,"Background_newroom");
layer_background_create("Background_newroom",spr_floor);
var lay_id = layer_get_id("Background_newroom");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id,spr_floor);
layer_background_change(back_id,spr_floor);

//create layer
layer_create(-200,"Instances");


//room before boss
if(minimap_row == 0 and minimap_col == 1){
	ds_grid_set(room_grid,0,1,2);
	ds_grid_set(room_grid,0,3,2);
	ds_grid_set(room_grid,1,1,2);
	ds_grid_set(room_grid,1,2,2);
	ds_grid_set(room_grid,1,3,2);
	
}
if(minimap_row == 1 and minimap_col == 0){
	ds_grid_set(room_grid,2,0,2);
	ds_grid_set(room_grid,4,0,2);
	ds_grid_set(room_grid,2,1,2);
	ds_grid_set(room_grid,3,1,2);
	ds_grid_set(room_grid,4,1,2);
}


for(var col = 0; col < 7; col++){
	for(var row = 0; row < 5; row++){
		//door
		if(ds_grid_get(room_grid,col,row) == 1){
			if(row == 0 and col == 3 and minimap_row != 0){
				var door = instance_create_layer(96+col*64, row*64,"Instances",obj_door);
				door.image_angle = 0;
				door.dir = "U";
			}
			if(row == 4 and col == 3 and minimap_row != 2){
				var door = instance_create_layer(96+col*64, 192+row*64,"Instances",obj_door);
				door.image_angle = 180;
				door.dir = "D";
			}
			if(row == 2 and col == 0 and minimap_col != 0){
				var door = instance_create_layer(col*64, 96+row*64,"Instances",obj_door);
				door.image_angle = 90;
				door.dir = "L";
			}
			if(row == 2 and col == 6 and minimap_col != 2){
				var door = instance_create_layer(192+col*64, 96+row*64,"Instances",obj_door);
				door.image_angle = 270;
				door.dir = "R";
			}
			if(row == 0 and col == 3 and minimap_row == 0){
				instance_create_layer(64*4,0,"Instances",obj_wall);
			}
			if(row == 4 and col == 3 and minimap_row == 2){
				var wall = instance_create_layer(64+64*4,448,"Instances",obj_wall);
				wall.image_angle = 180;
			}
			if(row == 2 and col == 0 and minimap_col == 0){
				var wall = instance_create_layer(0,64+64*3,"Instances",obj_wall);
				wall.image_angle = 90;
			}
			if(row == 2 and col == 6 and minimap_col == 2){
				var wall = instance_create_layer(576,64*3,"Instances",obj_wall);
				wall.image_angle = 270;
			}
		}else{
			//box
			if(ds_grid_get(room_grid,col,row) == 2){
				var box = instance_create_layer(64+col*64, 64+row*64,"Instances",obj_box);
				box.depth = 50;
				if(status){
					box.available = false;
				}
			}
			//portal
			else if(ds_grid_get(room_grid,col,row) == 3){
				if(!status){
					var portal = instance_create_layer(64+col*64, 64+row*64,"Instances",obj_portal);
					portal.depth = -50;
				}
			}
		}	
	}
}


//wall
for(var i = 0; i < 7; i ++){
	if(i != 3){
		var wall = instance_create_layer(0,64+64*i,"Instances",obj_wall);
		wall.image_angle = 90;
		var wall = instance_create_layer(576,64*i,"Instances",obj_wall);
		wall.image_angle = 270;
	}
}
for(var i = 0; i < 9; i ++){
	if(i != 4){
		instance_create_layer(64*i,0,"Instances",obj_wall);
	
		var wall = instance_create_layer(64+64*i,448,"Instances",obj_wall);
		wall.image_angle = 180;
	}
}


//boss fight
if(room_type == 5){

	instance_create_layer(room_width/2,room_height/2,"Instances",obj_boss);
	
	
	//walls
	instance_create_layer(64*4,0,"Instances",obj_wall);
	var wall = instance_create_layer(64+64*4,448,"Instances",obj_wall);
	wall.image_angle = 180;
	var wall = instance_create_layer(0,64+64*3,"Instances",obj_wall);
	wall.image_angle = 90;
	var wall = instance_create_layer(576,64*3,"Instances",obj_wall);
	wall.image_angle = 270;
}