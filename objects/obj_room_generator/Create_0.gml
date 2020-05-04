/// @description Insert description here
// You can write your code in this editor
global.rooms = ds_list_create();

//room 1
var rm = ds_grid_create(7,5);
ds_grid_set(rm,3,0,1);
ds_grid_set(rm,3,4,1);
ds_grid_set(rm,0,2,1);
ds_grid_set(rm,6,2,1);
ds_list_add(global.rooms,rm);

//room 2
var rm = ds_grid_create(7,5);
ds_grid_set(rm,3,0,1);
ds_grid_set(rm,3,4,1);
ds_grid_set(rm,0,2,1);
ds_grid_set(rm,6,2,1);
ds_grid_set(rm,2,1,2);
ds_grid_set(rm,2,2,2);
ds_grid_set(rm,2,3,2);
ds_grid_set(rm,3,1,2);
ds_grid_set(rm,4,1,2);
ds_grid_set(rm,2,3,2);
ds_grid_set(rm,4,3,2);
ds_grid_set(rm,4,2,2);
ds_list_add(global.rooms,rm);

//room 3
var rm = ds_grid_create(7,5);
ds_grid_set(rm,3,0,1);
ds_grid_set(rm,3,4,1);
ds_grid_set(rm,0,2,1);
ds_grid_set(rm,6,2,1);

ds_list_add(global.rooms,rm);

//room 4
var rm = ds_grid_create(7,5);
ds_grid_set(rm,3,0,1);
ds_grid_set(rm,3,4,1);
ds_grid_set(rm,0,2,1);
ds_grid_set(rm,6,2,1);

ds_list_add(global.rooms,rm);



//room layout overall
global.minimap = ds_grid_create(3,3);
ds_grid_set(global.minimap,1,1,1);
ds_grid_set(global.minimap,0,0,irandom_range(2,4));
ds_grid_set(global.minimap,0,1,irandom_range(2,4));
ds_grid_set(global.minimap,0,2,irandom_range(2,4));
ds_grid_set(global.minimap,1,0,irandom_range(2,4));
ds_grid_set(global.minimap,2,0,irandom_range(2,4));
ds_grid_set(global.minimap,1,2,irandom_range(2,4));
ds_grid_set(global.minimap,2,1,irandom_range(2,4));
ds_grid_set(global.minimap,2,2,irandom_range(2,4));

//create rooms
for(var r = 0; r<3; r++){
	for(var c = 0; c<3; c++){
		script_create_room(ds_grid_get(global.minimap,r,c),r,c);
	}
}