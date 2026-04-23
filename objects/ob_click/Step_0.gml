/// @description girl like everything

// i forgot why i wrote this code i just remember it works
var hoverable = instance_position(mouse_x, mouse_y, select);

// makes it easier to read
if (instance_exists(selected_item)){
var selx = selected_item.x;
var sely = selected_item.y;}

// oh yeah, right. this is why i wrote it.
// it defines a rectangular area that can be picked up
// instead of yknow
// clicking on screen and the closest instances gets yoinked to you

// ^ ignore the above comments. they no longer apply. now it just checks for the hovered over item
if selected_item = noone and mouse_check_button_pressed(mb_left) and hoverable != noone{
	// if i didnt do this game maker would pick up every instance of ob_selectable
	selected_item = instance_nearest(mouse_x, mouse_y, select);
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
	if collision_rectangle_list(selx, sely, selx + selected_item.sprite_width, sely + selected_item.sprite_height, customer, false, false, customer_list, false)
	and customer.food_wanted != noone{
			show_debug_message("collided with customer");
			if (customer.ordering){
				var food = asset_get_index(customer.food_wanted);
				if (selected_object = food){
					ob_control.rating += 0.25;
					customer.mood = 2;
					customer.sprite_index = sp_customer_satisfied;
				}
				else{
					ob_control.rating -= 0.5;
					customer.mood = 1;
					customer.sprite_index = sp_customer_mad;
				}
				if control.alarm[1] != -1{
					switch(customer.mood){
					case 1:
						ob_control.rating--;
					break;
					case 2:
						ob_control.rating -= 0.5;
					break;
					}
				}
				control.alarm[0] = -1;
				control.alarm[1] = -1;
			}
			ob_control.rating = clamp(ob_control.rating, 0, 5);
			customer.ordering = false;
			show_debug_message("Current mood: " + string(customer.mood));
			customer.alarm[0] = 120;
		}
	// originally used instance_position_list, but i needed it to be within a defined area instead at a point
	// did you know the order of this matters? i didnt
	// put instance_exists after collision_rectangle_list and it gave me an error
	if (instance_exists(selected_item) and collision_rectangle_list(selx, sely, selx + selected_item.sprite_width, sely + selected_item.sprite_height, select, false, false, objects, false))
		{
			for (var i = 0; i < ds_list_size(objects); i++)
			{
				if (ds_list_find_value(objects, i) != selected_item)
				{
					show_debug_message("collision detection works");
					//seeContent();
					itemMerger();
				}
			}
		}
	if (instance_exists(selected_item) and !collision_rectangle_list(mix_area.bbox_left +offset, mix_area.bbox_top +offset, mix_area.bbox_right -offset, mix_area.bbox_bottom -offset, selected_item, false, false, mix_area_list, false)){
		instance_destroy(selected_item);
	}
	ds_list_clear(customer_list);
	ds_list_clear(objects);
	ds_list_clear(mix_area_list);
	selected_item = noone;
}

// centers the selection
if (instance_exists(selected_item) and selected_item != noone){
	// cant use selx or sely here gotta use the full thing
	ob_cursor.image_index = 2;
	selected_item.x = mouse_x - selected_item.sprite_width/2;
	selected_item.y = mouse_y - selected_item.sprite_height/2;
}

// if right click, erase that thang
if (instance_exists(select) and mouse_check_button_pressed(mb_right) and hoverable != noone){
	instance_destroy(hoverable);
}