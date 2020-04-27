/// @description Insert description here
// You can write your code in this editor

while(image_index == image_number-1){
	image_index = 0;
}


//outside of the room
if(bbox_right>room_width or bbox_left<0 or bbox_top<0 or bbox_bottom>room_height){
	instance_destroy();
}