draw_self();
draw_set_color(c_black);
if (text = "Return"){
draw_set_color(c_white);
smallCenteredText();
image_blend = make_colour_hsv(255, 200, 200);}
else{largeCenteredText();}
var d_x = x + sprite_width/2;
var d_y = y + sprite_height/2;
draw_text(d_x, d_y, text);

// i could DEFINITELY have done this better. but. hhhhhhhhhhhhhhhhhhhhhhhhhhhhh
if (pop_up and control.pop_up){
	// is this cheap? yes. oh well!
	draw_sprite_ext(sp_black,0,camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),1,1,0,0,0.7);
	draw_sprite_stretched(sp_button,0,margin_x,margin_y,box_length,main_box_height);
	var info_y = margin_y + main_box_height + padding/2;
	draw_sprite_stretched(sp_button,0,margin_x,info_y,box_length,info_box_height);
	var x_pos = margin_x + padding;
	var y_pos = margin_y + padding;
	smallLeftText();
	if (!instance_exists(ob_check_box)){
		mishex = instance_create_layer(x_pos,y_pos,"pop_up",ob_check_box);
		mishex.mode = control.mishex_easter_egg;
		mishex.eye = 2;
		show_debug_message("creating new mishex");
		y_pos += mishex.sprite_height + padding;
		recipes = instance_create_layer(x_pos, y_pos, "pop_up", ob_check_box);
		recipes.mode = control.recipes_unlocked;
		y_pos += recipes.sprite_height + padding;
		hard = instance_create_layer(x_pos, y_pos, "pop_up", ob_check_box);
		hard.mode = control.hard_mode;
		leave = instance_create_layer(margin_x, info_y + info_box_height + padding/2, "pop_up", ob_button);
		leave.image_yscale = 0.5;
		leave.image_xscale = 1.5;
		leave.text = "Return";
	
		}	
	draw_text(x_pos + mishex.sprite_width + padding, mishex.y + mishex.sprite_height/2, "Mishex Easter Egg");
	control.mishex_easter_egg = mishex.mode;
	draw_text(x_pos + recipes.sprite_width + padding, recipes.y + recipes.sprite_height/2, "Unlock Recipes at Start");
	control.recipes_unlocked = recipes.mode;
	draw_text(x_pos + hard.sprite_width + padding, hard.y + hard.sprite_height/2, "Hard Mode");
	control.hard_mode = hard.mode;
	var hover = instance_position(mouse_x, mouse_y, ob_check_box);
	var info_text_ln1 = "";
	var info_text_ln2 = "";
	switch (hover){
		case mishex:
			info_text_ln1 = "Enables an event where an eyeball named";
			info_text_ln2 = "Mishex may rarely appear. He does nothing!";
		break;
		case recipes:
			info_text_ln1 = "Start with all recipes unlocked by default,";
			info_text_ln2 = "though each will have to be made to win.";
		break;
		case hard:
			info_text_ln1 = "Cuts timer duration in half.";
			info_text_ln2 = "";
		break;
	}
	//show_debug_message("Mishex Instance: " + string(mishex.mode));
	//show_debug_message("Mishex Control: " + string(control.mishex_easter_egg));
	draw_text(margin_x + padding/2, info_y + padding, info_text_ln1);
	draw_text(margin_x + padding/2, info_y + padding + string_height(info_text_ln1), info_text_ln2);
	if (instance_position(mouse_x, mouse_y, leave)){
		leave.image_index = 1;
		if mouse_check_button_pressed(mb_left){ 	
			audio_play_sound(sn_select,1,0);
			callImage(x, y, 0);
			pop_up = false;
			control.pop_up = false
		}
	}else{leave.image_index = 0;}
}