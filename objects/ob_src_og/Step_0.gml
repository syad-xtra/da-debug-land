/// @description Insert description here
// You can write your code in this editor

// right click and change what u spawn
// this isnt even how it will be in the final game lol

if point_in_rectangle(mouse_x, mouse_y, x, y, x + 72, y + 72) and mouse_check_button_pressed(mb_right){
	spawnables++;
	if (spawnables = sprite_get_number(sprite_index)){
		spawnables = 0;
	}
	image_index = spawnables;
	switch (image_index){
		case 0:
			create = ob_zzz;
		break;
		case 1:
			create = ob_blue;
		break;
		case 2:
			create = ob_five;
		break;
		default:
	}
}

// left click and... spawn what u spawn...?

if point_in_rectangle(mouse_x, mouse_y, x, y, x + 72, y + 72) and mouse_check_button_pressed(mb_left){
	// patented original vivien sound
	audio_play_sound(sn_select,1,0);
	instance_create_layer(ob_src.x - random_range(32,256), ob_src.y - random_range(-256, 256), "Instances", create);
}