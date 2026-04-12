// checks if mouse enter is true, then draws the amount of recipes unlocked out of max amount of recipes

if instance_exists(book){
	if (book.show_text){
		var text = string(book.unlock_number) + "/" + string(array_length(combo)-6);
		var width = book.sprite_width/2;
		var height = book.sprite_height/2;
		smallCenteredText();
		draw_text(book.x + width, book.y + height, text);
	}
}

if instance_exists(customer){
	if customer.food_wanted != noone{
		var text = "I want " + customer.food_list[customer.food_pos][0][1];
		var width = customer.sprite_width/2;
		smallCenteredText();
		draw_text(customer.x + width, customer.y - offset, text);
	}

	// i want to keep text a temporary variable. but this keeps updating every frame
	// so i have to use a non-temporary variable
	// hence chosen
	if customer.mood != 0{
		var text = text;
		if chosen = noone{
			switch customer.mood{
				case 1:
					text = choose("I have an army of lawyers.", "I'm literally going to kill myself.", "What's wrong with you?");
				break;
				case 2:
					text = choose("Yay, thanks!", "This is the best thing ever.", "Hell yes...");
				break;
			}
			chosen = text;
		}
		var width = string_width(chosen);
		var width = customer.sprite_width/2;
		smallCenteredText();
		draw_text(customer.x + width, customer.y - offset, chosen);
	}
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
				width = ingredient_list[i].sprite_width/2;
				smallCenteredText();
				// apparently game maker can read instance refs. good to know
				draw_text(ingredient_list[i].x + width, ingredient_list[i].y + ingredient_list[i].sprite_height + offset/4, text);
			}
	}
}