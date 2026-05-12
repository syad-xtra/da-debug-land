if (x != x_pos and !leaving){x -= spd;}

if (food_wanted = noone and x = x_pos and !leaving){
	audio_play_sound(sn_complain, 0, 0);
	callImage(x+sprite_width/2, y+30, 1);
	while (food_wanted = noone and ordering = true){
		food_pos = random(array_length(food_list));
		show_debug_message(food_pos);
		if (food_list[food_pos][0][3]){
			var ing_1 = food_list[food_pos][1][0];
			var ing_2 = food_list[food_pos][1][1];
			if (checkUnlock(ing_1, food_list) and checkUnlock(ing_2, food_list)){food_wanted = food_list[food_pos][0][0];}
		}
	}
	food_wanted = string(food_wanted);
	var s_min = 0;
	var s_max = 0;
	if (ob_control.hard_mode){s_min = 1200; s_max = 1800;}
	else{s_min = 2800; s_max = 3600;}
	ob_control.alarm[0] = random_range(s_min, s_max);
}

if (leaving){x -= spd;}
if (x = -69){
	audio_play_sound(sn_door, 0, 0);
	alarm[1] = 90;
}