/// @description girl like everything

// i forgot why i wrote this code i just remember it works
var hoverable = instance_nearest(mouse_x, mouse_y, ob_selectable);

// makes it easier to read
if (instance_exists(selected_item)){
var selx = selected_item.x;
var sely = selected_item.y;}

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
	
	selected_object = object_get_name(selected_item.object_index);
	show_debug_message("selected item: " + selected_object);
	selected_object =  asset_get_index(selected_object);
	// have to check with customer first for some reason idk
	// otherwise it just doesnt work
	// do u like my debug messages 🥺
	if collision_rectangle_list(selx, sely, selx + selected_item.sprite_width, sely + selected_item.sprite_height, ob_customer, false, false, customer, false){
			show_debug_message("collided with customer");
			var food = asset_get_index(ob_customer.food_wanted);
			if (selected_object = food){
				show_debug_message("yay thank you");
				ob_customer.image_index = 2;
			}
			else{
				show_debug_message("not what i wanted");
				ob_customer.image_index = 1;
			}
			instance_destroy(selected_item);
			ob_customer.food_wanted = noone;
			ob_customer.alarm[0] = 120;
		}
	// originally used instance_position_list, but i needed it to be within a defined area instead at a point
	// did you know the order of this matters? i didnt
	// put instance_exists after collision_rectangle_list and it gave me an error
	if (instance_exists(selected_item) and collision_rectangle_list(selx, sely, selx + selected_item.sprite_width, sely + selected_item.sprite_height, ob_selectable, false, false, objects, false))
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
	ds_list_clear(customer);
	ds_list_clear(objects);
	selected_item = noone;
}

// centers the selection
if (instance_exists(selected_item) and selected_item != noone){
	// cant use selx or sely here gotta use the full thing
	selected_item.x = mouse_x - selected_item.sprite_width/2;
	selected_item.y = mouse_y - selected_item.sprite_height/2;
}

// if right click, erase that thang
if (instance_exists(ob_selectable) and mouse_check_button_pressed(mb_right) and point_in_rectangle(mouse_x, mouse_y, hoverable.x -36, hoverable.y - 36, hoverable.x + 36, hoverable.y + 36)){
	instance_destroy(hoverable);
}