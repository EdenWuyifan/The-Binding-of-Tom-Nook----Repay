/// @description Insert description here
// You can write your code in this editor

//full heart
for(var i = 0; i < global.player_hp div 2; i ++){
	draw_sprite(spr_heart,0,20+50*i,20);
}

//half heart
for(var i = 0; i < global.player_hp mod 2; i ++){
	draw_sprite(spr_heart,1,20+(global.player_hp div 2)*50,20);
}

//empty heart
for(var i = 0; i < (global.player_max_hp - global.player_hp) div 2; i ++){
	draw_sprite(spr_heart,2,20+(global.player_hp div 2)*50+50*(global.player_hp mod 2)+i*50,20);
}


//bells

draw_set_halign(fa_right);
draw_text_color(room_width-50,25,global.bells,c_orange,c_orange,c_yellow,c_yellow,1);
draw_sprite_ext(spr_bullet,0,room_width-30,40,0.8,0.8,0,c_white,1);