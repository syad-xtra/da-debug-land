// i am not doing shaders. hell nah. this is way easier
unlock_number = 0;
for (var i = 6; i < array_length(combo); i++){
	if (!combo[i][0][3]){continue;}
	if (combo[i][0][2]){unlock_number++;}
}
alpha = unlock_number/max_number;
image_alpha = alpha;

if position_meeting(mouse_x,mouse_y,self){
	if mouse_check_button_pressed(mb_left){
		switch (room){
			case rm_2:
				room_goto(rm_3);
			break;
			case rm_3:
				room_goto(rm_2);
			break;
		}
	}
	show_text = true;
}
else{show_text = false}