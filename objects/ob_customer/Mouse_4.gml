while (food_wanted = noone and clickable){
	food_pos = random(array_length(food_list));
	show_debug_message(food_pos);
	if (food_list[food_pos][0][3]){
		var ing_1 = food_list[food_pos][1][0];
		var ing_2 = food_list[food_pos][1][1];
		if (checkUnlock(ing_1, food_list) and checkUnlock(ing_2, food_list)){food_wanted = food_list[food_pos][0][0];}
	}
}
food_wanted = string(food_wanted);