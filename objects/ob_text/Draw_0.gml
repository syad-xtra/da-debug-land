// checks if mouse enter is true, then draws the amount of recipes unlocked out of max amount of recipes

if instance_exists(book){
	if (book.show_text){
		var text = string(book.unlock_number) + "/" + string(array_length(combo)-6);
		var width = book.sprite_width/2;
		var height = book.sprite_height/2;
		smallCenteredText();
		draw_set_color(c_white);
		draw_text(book.x + width, book.y + height, text);
	}
}

if instance_exists(customer) and room = rm_2{
	smallCenteredText();
	draw_set_color(c_black);
	var mid_point = customer.bbox_right + (sprite_get_bbox_right(txt_box) - sprite_get_bbox_left(txt_box))/2 - 4;
	if customer.food_wanted != noone{
		var food = asset_get_index(customer.food_list[customer.food_pos][0][0]);
		food = object_get_sprite(food);
		draw_sprite(txt_box,0,customer.bbox_right - offset_x, customer.bbox_top);
		var start = "I want";
		if (control.alarm[1] != -1){start = "Oy! I said I want";}
		draw_text(mid_point, customer.y + offset_y, start);
		draw_sprite(food, 0, mid_point - sprite_get_width(food)/2, customer.y + offset_y*1.2);
		var text = customer.food_list[customer.food_pos][0][1];
		draw_text(mid_point, customer.y + offset_y*1.5 + 28, text);
	}

	// i want to keep text a temporary variable. but this keeps updating every frame
	// so i have to use a non-temporary variable
	// hence chosen
	if customer.mood != 0{
		var text = text;
		if chosen[0] = noone{
			switch customer.mood{
				case 1:
					text = choose(text_opt[0], text_opt[1], text_opt[2]);
				break;
				case 2:
					text = choose(text_opt[3], text_opt[4], text_opt[5]);
				break;
			}
			chosen[0] = text;
		}
		draw_sprite(txt_box,0,customer.bbox_right - offset_x, customer.bbox_top);
		draw_text(mid_point, customer.y + (sprite_get_bbox_bottom(txt_box) - sprite_get_bbox_top(txt_box))/2, chosen[0][0]);
		if (chosen[0][1] != noone){
		draw_text(mid_point, customer.y + (sprite_get_bbox_bottom(txt_box) - sprite_get_bbox_top(txt_box))/2 + 12, chosen[0][1]);}
	}
}

// caption underneath ingredient
if instance_exists(select){
	draw_set_color(c_white);
	var text = noone;
	for (var i = 0; i < instance_number(select); i++){
		var ingredient_list = array_create(0);
		ingredient_list[i] = instance_find(select, i);
		var ingredient_name = object_get_name(ingredient_list[i].object_index);
		for (var e = 0; e < array_length(combo); e++)
			if (combo[e][0][0] = ingredient_name){text = combo[e][0][1];}
		if (ingredient_name = "ob_sludge"){text = "Sludge"}
		width = ingredient_list[i].sprite_width/2;
		smallCenteredText();
		draw_text(ingredient_list[i].x + width, ingredient_list[i].y + ingredient_list[i].sprite_height + offset_y/4, text);
	}
}