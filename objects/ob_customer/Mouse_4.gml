while (food_wanted = noone){
	var food_pos;
	food_pos = random(array_length(food_list));
	if (food_list[food_pos][4]){
		food_wanted = food_list[food_pos][2]
	}
	food_wanted = string(food_wanted);
	show_debug_message("food wanted: " + food_wanted);
}