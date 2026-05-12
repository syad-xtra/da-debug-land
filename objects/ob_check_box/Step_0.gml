if (instance_position(mouse_x,mouse_y,self) and mouse_check_button_pressed(mb_left)){
	mode = !mode;
	audio_play_sound(sn_select,1,0);
	callImage(x, y, 0);
}

if (mode){image_index = eye;}
else{image_index = 0;}