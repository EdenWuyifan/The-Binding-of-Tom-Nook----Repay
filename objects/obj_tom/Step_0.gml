/// @description Insert description here
// You can write your code in this editor
//depth
depth = -y;

//key
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
space = keyboard_check(vk_space);

move_x = (right - left) * spd;
move_y = (down - up) * spd;

//collide with wall

x+=move_x;
y+=move_y;