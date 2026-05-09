/// @description Insert description here
// You can write your code in this editor

if (room = rm_2 and !instance_exists(ob_customer)){
	instance_create_layer(ob_control.x_customer, ob_control.y_customer, "Customer", ob_customer);
	audio_play_sound(sn_door, 0, 0);
}

if (room = rm_2){
	setUIHeight(ob_null);
	ob_recipe_book_grey.x = 5;
	ob_recipe_book_grey.y = 34;

	if (rating < 1){
		end_text = "You lost, lol";
		game_ending = true;
	}

	if (rating >= 5 and ob_recipe_book.unlock_number = max_num){
		end_text = "You win, yay!";
		game_ending = true;
	}

	if (game_ending){
		room_goto(rm_ending);}
}

// to restart game
if keyboard_check_pressed(ord("R")){
	game_restart();
}

// clears area
if (instance_exists(ob_selectable) and keyboard_check_pressed(ord("C"))){
	instance_destroy(ob_selectable);
}

if (customer_mad = true and instance_exists(ob_customer)){
ob_customer.sprite_index = sp_customer_mad;
}