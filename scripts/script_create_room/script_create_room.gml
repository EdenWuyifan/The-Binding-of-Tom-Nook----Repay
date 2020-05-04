room_type = argument0;
minimap_row = argument1;
minimap_col = argument2;

room_grid = ds_list_find_value(global.rooms,room_type);

var new_room = room_add();
for(var col = 0; col < 7; col++){
	for(var row = 0; row < 5; row++){
		if(ds_grid_get(room_grid,col,row) == 1){
			if(row == 0 and col == 3 and minimap_row != 0){
				var door = instance_create_layer(96+col*64, 96+row*64,"Instances",obj_door);
				door.direction = 0;
			}
			if(row == 4 and col == 3 and minimap_row != 2){
				var door = instance_create_layer(96+col*64, 96+row*64,"Instances",obj_door);
				door.direction = 180;
			}
			if(row == 2 and col == 0 and minimap_col != 0){
				var door = instance_create_layer(96+col*64, 96+row*64,"Instances",obj_door);
				door.direction = 90;
			}
			if(row == 2 and col == 6 and minimap_col != 2){
				var door = instance_create_layer(96+col*64, 96+row*64,"Instances",obj_door);
				door.direction = 270;
			}
		}else{
			if(ds_grid_get(room_grid,col,row) == 2){
				var box = instance_create_layer(96+col*64, 96+row*64,"Instances",obj_box);
			}
		}
		
		
	}
}