/// @description girl like everything

// i forgot why i wrote this code i just remember it works
var hoverable = instance_nearest(mouse_x, mouse_y, ob_selectable);

// oh yeah, right. this is why i wrote it.
// it defines a rectangular area that can be picked up
// instead of yknow
// clicking on screen and the closest instances gets yoinked to you
if selected_item = noone and mouse_check_button_pressed(mb_left) and instance_exists(ob_selectable) and point_in_rectangle(mouse_x, mouse_y, hoverable.x -0, hoverable.y - 0, hoverable.x + hoverable.sprite_width, hoverable.y + hoverable.sprite_height){
	// if i didnt do this game maker would pick up every instance of ob_selectable
	selected_item = instance_nearest(mouse_x, mouse_y, ob_selectable);
	audio_play_sound(sn_select,1,0);
}

// checks if item is selected, if left is let go and gives a list of items colliding with the picked up item
// then if it collides, calls merge
if selected_item != noone and mouse_check_button_released(mb_left) {
	
	if collision_rectangle_list(hoverable.x -0, hoverable.y - 0, hoverable.x + hoverable.sprite_width, hoverable.y + hoverable.sprite_height, ob_selectable, false, false, objects, false)
		{
			for (var i = 0; i < ds_list_size(objects); i++)
			{
				if (ds_list_find_value(objects, i) != selected_item)
				{
					show_debug_message("collision detection works");
					//seeContent();
					itemMerger();
					break; // stops a for loop
				}
			}
		}
	ds_list_clear(objects);
	selected_item = noone;
}

// centers the selection
if selected_item != noone and instance_exists(selected_item){
	selected_item.x = mouse_x - hoverable.sprite_width/2;
	selected_item.y = mouse_y - hoverable.sprite_height/2;
}

// if right click, erase that thang
if mouse_check_button_pressed(mb_right) and instance_exists(ob_selectable) and point_in_rectangle(mouse_x, mouse_y, hoverable.x -36, hoverable.y - 36, hoverable.x + 36, hoverable.y + 36){
	instance_destroy(hoverable);
}