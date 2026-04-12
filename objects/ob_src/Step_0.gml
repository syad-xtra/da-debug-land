/// @description Insert description here
// You can write your code in this editor

//

switch (image_index){
	case 0:
		create = ob_blood;
	break;
	case 1:
		create = ob_bile;
	break;
	case 2:
		create = ob_brain;
	break;
	case 3:
		create = ob_eye;
	break;
	case 4:
		create = ob_sw_alg;
	break;
	case 5:
		create = ob_shroom;
	break;
}

// left click and... spawn what u spawn...?

if point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height) and mouse_check_button_pressed(mb_left){
	// patented original vivien sound
	audio_play_sound(sn_select,1,0);
	instance_create_layer(random_range(10,160), random_range(120, 206), "Instances", create);
}