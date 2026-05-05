/// @description Insert description here
// You can write your code in this editor


switch (src_type){
	case 1:
		create = ob_bile;
		sprite_index = sp_bil_src;
	break;
	case 2:
		create = ob_brain;
		sprite_index = sp_brain_src;
	break;
	case 3:
		create = ob_eye;
		sprite_index = sp_eyes_src;
	break;
	case 4:
		create = ob_sw_alg;
		sprite_index = sp_sw_al_src;
	break;
	case 5:
		create = ob_shroom;
		sprite_index = sp_shr_src;
	break;
}

// left click and... spawn what u spawn...?

if point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height) and mouse_check_button_pressed(mb_left){
	var inst_count = 0;
	if (instance_exists(ob_selectable)){
	inst_count = instance_number(ob_selectable)}
	if (inst_count <= 16){
	// patented original vivien sound
	audio_play_sound(sn_select,1,0);
	callImage(x+sprite_width/2,y+sprite_height/2,0);
	instance_create_layer(random_range(mix_left, mix_right - 30), random_range(mix_top + 10, mix_bottom - 30), "Instances", create);
	}
}