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
}

// to restart game
if keyboard_check_pressed(ord("R")){
	game_restart();
}

if (customer_mad = true and instance_exists(ob_customer)){
ob_customer.sprite_index = sp_customer_mad;
}

if (rating < 1){
	game_restart();
}