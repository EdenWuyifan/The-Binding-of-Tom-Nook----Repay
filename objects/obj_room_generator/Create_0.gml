/// @description Insert description here
// You can write your code in this editor
global.rooms = ds_list_create();

global.minimap_rooms = ds_list_create();

global.cur_room = 4;

global.makeNewRoom = false;

//room 1
var rm1 = ds_grid_create(7,5);
ds_grid_set_region(rm1, 0, 0, 6, 4, 0);
ds_grid_set(rm1,3,0,1);
ds_grid_set(rm1,3,4,1);
ds_grid_set(rm1,0,2,1);
ds_grid_set(rm1,6,2,1);
ds_grid_set(rm1,0,0,2);
ds_grid_set(rm1,6,0,2);
ds_grid_set(rm1,0,4,2);
ds_grid_set(rm1,6,4,2);
//ds_grid_set(rm1,1,0,3);
//ds_grid_set(rm1,5,0,3);
ds_list_add(global.rooms,rm1);

//room 2
var rm2 = ds_grid_create(7,5);
ds_grid_set_region(rm2, 0, 0, 6, 4, 0);
ds_grid_set(rm2,3,0,1);
ds_grid_set(rm2,3,4,1);
ds_grid_set(rm2,0,2,1);
ds_grid_set(rm2,6,2,1);
ds_grid_set(rm2,2,1,2);
ds_grid_set(rm2,2,2,2);
ds_grid_set(rm2,2,3,2);
ds_grid_set(rm2,3,1,2);
ds_grid_set(rm2,4,1,2);
ds_grid_set(rm2,2,3,2);
ds_grid_set(rm2,4,3,2);
ds_grid_set(rm2,4,2,2);
ds_list_add(global.rooms,rm2);

//room 3
var rm3 = ds_grid_create(7,5);
ds_grid_set_region(rm3, 0, 0, 6, 4, 0);
ds_grid_set(rm3,3,0,1);
ds_grid_set(rm3,3,4,1);
ds_grid_set(rm3,0,2,1);
ds_grid_set(rm3,6,2,1);

ds_list_add(global.rooms,rm3);

//room 4
var rm4 = ds_grid_create(7,5);
ds_grid_set_region(rm4, 0, 0, 6, 4, 0);
ds_grid_set(rm4,3,0,1);
ds_grid_set(rm4,3,4,1);
ds_grid_set(rm4,0,2,1);
ds_grid_set(rm4,6,2,1);

ds_list_add(global.rooms,rm4);

//boss room
var rm5 = ds_grid_create(7,5);

ds_list_add(global.rooms,rm5);




//show_debug_message(global.rooms);

//room layout overall
global.minimap_status = ds_grid_create(3,3);

global.minimap = ds_grid_create(3,3);
ds_grid_set(global.minimap,1,1,1);
ds_grid_set(global.minimap,0,0,5);
ds_grid_set(global.minimap,0,1,irandom_range(2,4));
ds_grid_set(global.minimap,0,2,irandom_range(2,4));
ds_grid_set(global.minimap,1,0,irandom_range(2,4));
ds_grid_set(global.minimap,2,0,irandom_range(2,4));
ds_grid_set(global.minimap,1,2,irandom_range(2,4));
ds_grid_set(global.minimap,2,1,irandom_range(2,4));
ds_grid_set(global.minimap,2,2,irandom_range(2,4));




//show_debug_message(ds_grid_get(global.minimap,0,0));
//show_debug_message(ds_grid_get(global.minimap,1,1));


//create rooms
for(var i = 0; i < 9; i++){
	var new_room = room_add();
	room_set_width(new_room, 576);
	room_set_height(new_room, 448);
	ds_list_add(global.minimap_rooms,new_room);
	ds_grid_set(global.minimap_status,i mod 3,i div 3, false);
}
