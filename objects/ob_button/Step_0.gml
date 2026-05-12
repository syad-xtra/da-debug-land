//is this also cheap? yes!
if (instance_position(mouse_x, mouse_y, self) and !control.pop_up){
	image_index = 1;
	if mouse_check_button_pressed(mb_left){
		switch (use_case){
			case 0:
				room_goto(rm_2);
			break;
			case 1:
				pop_up = true;
				control.pop_up = true;
			break;
			case 2:
				game_end();
			break;
		}
		audio_play_sound(sn_select,1,0);
		callImage(x, y, 0);
	}
	// unused.
	//if mouse_check_button_pressed(mb_right){
	//	switch (use_case){
	//		case 0:
	//			// room_goto(free);
	//		break;
	//	}
	//}
}
else{image_index = 0;}

if (instance_exists(ob_check_box) and instance_exists(leave) and !control.pop_up){
	instance_destroy(leave);
	instance_destroy(ob_check_box);}