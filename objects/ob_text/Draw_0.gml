// checks if mouse enter is true, then draws the amount of recipes unlocked out of max amount of recipes
if (book.show_text){
	var text = string(book.unlock_number) + "/" + string(array_length(book.combo));
	var width = string_width(text);
	width = width-book.sprite_width;
	var height = string_height(text);
	height = height-book.sprite_height;
	// i need to half it? for some reason?
	// but it centers
	draw_set_font(fnt_large);
	draw_text(book.x-width/2,book.y-height/2,text);
}

if customer.food_wanted != noone{
	var text = "I want " + customer.food_list[customer.food_pos][0][1];
	var width = string_width(text);
	width = width-customer.sprite_width;
	draw_set_font(fnt_small);
	draw_text(customer.x-width/2,customer.y-offset,text);
}

// i want to keep text a temporary variable. but this keeps updating every frame
// so i have to use a non-temporary variable
// hence chosen
if customer.mood != 0{
	if chosen = noone{
		switch customer.mood{
			case 1:
				text = choose("This sucks.", "I'm literally going to kill myself.", "What's wrong with you?");
			break;
			case 2:
				text = choose("Yay, thanks!", "This is the best thing ever.", "Hell yes...");
			break;
		}
		chosen = text;
	}
	var width = string_width(chosen);
	width = width-customer.sprite_width;
	draw_set_font(fnt_small);
	draw_text(customer.x-width/2,customer.y-offset,chosen);
}

// caption underneath ingredient
if instance_exists(select){
	for (var i = 0; i < instance_number(select); i++){
		var ingredient_list = array_create(0);
		ingredient_list[i] = instance_find(select, i);
		var ingredient_name = object_get_name(ingredient_list[i].object_index);
		for (var e = 0; e < array_length(combo); e++)
			if (combo[e][0][0] = ingredient_name){
				var text = combo[e][0][1];
				var width = string_width(text);
				width = width-ingredient_list[i].sprite_width;
				draw_set_font(fnt_small);
				draw_text(ingredient_list[i].x-width/2, ingredient_list[i].y + ingredient_list[i].sprite_height, text);
			}
	}
}