while (food_wanted = noone){
	food_pos = random(array_length(food_list));
	show_debug_message(food_pos);
	if (food_list[food_pos][0][3]){
		food_wanted = food_list[food_pos][0][0];
	}
}
food_wanted = string(food_wanted);