/// @description Insert description here
// You can write your code in this editor

if ob_control.combo[3][0][2]{
		image_index = 1;
		create = ob_kisko;
	}
	
// left click and... spawn what u spawn...?

if create != noone and point_in_rectangle(mouse_x, mouse_y, x, y, x + 72, y + 72) and mouse_check_button_pressed(mb_left){
	// patented original vivien sound
	audio_play_sound(sn_select,1,0);
	instance_create_layer(ob_src.x - random_range(32,256), ob_src.y - random_range(-256, 256), "Instances", create);
}