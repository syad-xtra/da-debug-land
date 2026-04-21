if instance_position(mouse_x, mouse_y, self){
	image_index = 1;
	if mouse_check_button_pressed(mb_left){
		switch (use_case){
			case 0:
				room_goto(rm_2);
			break;
			case 1:
				dir++;
				scrollDifficulty();
			break;
			case 2:
				game_end();
			break;
		}
	}
	if mouse_check_button_pressed(mb_right){
		switch (use_case){
			case 0:
				// room_goto(free);
			break;
			case 1:
				dir--;
				scrollDifficulty();
			break;
		}
	}
}
else{image_index = 0;}

function scrollDifficulty(){
	if (dir = 0){dir = 3;}
	if (dir = 4){dir = 1;}
	switch (dir){
		case 1:
			difficulty = 30;
			range_min = 1200;
			range_max = 2400;
			text = "Easy";
		break;
		case 2:
			difficulty = 60;
			range_min = 600;
			range_max = 1200;
			text = "Normal";
		break;
		case 3:
			difficulty = 120;
			range_min = 300;
			range_max = 600;
			text = "Hard";
		break;
	}
}
