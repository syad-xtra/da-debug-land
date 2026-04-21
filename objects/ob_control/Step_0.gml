/// @description Insert description here
// You can write your code in this editor

// to restart game
if (room = rm_2 and !instance_exists(ob_customer)){
	instance_create_layer(ob_control.x_customer, ob_control.y_customer, "Customer", ob_customer);
	audio_play_sound(sn_door, 0, 0);
}

if keyboard_check_pressed(ord("R")){
	game_restart();
}

if (rating < 1){
	game_restart();
}