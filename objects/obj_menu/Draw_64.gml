/// @description Insert description here
// You can write your code in this editor

if(room == room_menu){
	if(cur_pos == 0){
		draw_sprite_ext(spr_bullet,0,250,270,1.5,1.5,0,c_white,1);
		draw_text_transformed_color(300,250,"Start",1.0,1.0,0,c_red,c_fuchsia,c_orange,c_dkgray,1);
		draw_text_transformed_color(300,290,"Guide",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
		draw_text_transformed_color(300,330,"Exit",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
	}else if(cur_pos == 1){
		draw_sprite_ext(spr_bullet,0,250,310,1.5,1.5,0,c_white,1);
		draw_text_transformed_color(300,250,"Start",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
		draw_text_transformed_color(300,290,"Guide",1.0,1.0,0,c_red,c_fuchsia,c_orange,c_dkgray,1);
		draw_text_transformed_color(300,330,"Exit",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
	}else if(cur_pos == 2){
		draw_sprite_ext(spr_bullet,0,250,350,1.5,1.5,0,c_white,1);
		draw_text_transformed_color(300,250,"Start",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
		draw_text_transformed_color(300,290,"Guide",1.0,1.0,0,c_aqua,c_blue,c_navy,c_teal,1);
		draw_text_transformed_color(300,330,"Exit",1.0,1.0,0,c_red,c_fuchsia,c_orange,c_dkgray,1);
	}
}
