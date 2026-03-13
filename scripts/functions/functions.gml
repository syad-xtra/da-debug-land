// had to make a script because......? i had this somewhere else but it didnt work. but now it does
// spawns a new thing, and destroys the other two things. unfortunately sometimes spawns two new things
// but uhhhh. this is a debug space shut up i aint selling this game
// nvm i fixed it 👆

function itemMerger(){
	combos =
	[
	    ["ob_blue", "ob_five", ob_zzz],
	    ["ob_zzz", "ob_zzz", ob_five],
	    ["ob_five", "ob_zzz", ob_blue]
	];
	// need this so i can actually delete the two closest instances
	var objects_index = ob_click.objects;
	indexToObject()
	// SORT after convert. vivien. not before. you. youuuuuuuu
	ds_list_sort(objects, true);
	seeContent();
	// dear god this thing. it reads through the combos then looks for a matching set of combos
	// does nothing if it finds nothing
	// technology!
	for (var i=0; i<array_length(combos); i+=1){
			if (combos[i][0] = ds_list_find_value(objects, 0) and combos[i][1] = ds_list_find_value(objects, 1)){
				show_debug_message("combo works");
				instance_create_layer(selected_item.x, selected_item.y, "Instances", combos[i][2]);
				// dear god this thing too
				// technically i only need it to delete two things. but well. i lazy
				for (var e=0;e<2;e+=1){
					// youre not gonna catch me write this out 👇 again
					var object = asset_get_index(ds_list_find_value(objects_index, e));
					instance_destroy(instance_nearest(mouse_x, mouse_y,object));
				}
			}
	}
	// for good measure
	ds_list_clear(objects_index);
}

// i love my debug <3
function seeContent(){
	show_debug_message("Selected item list: ");
	for (var i=0; i<ds_list_size(objects); i+=1)
	{show_debug_message(string(ds_list_find_value(objects, i)))}
}

// collision rectangle list returns instance ids so converting them to object names it is....
function indexToObject(){
	for (var i=0; i<ds_list_size(objects); i+=1){
		// honestly speaking maybe just .object_index would've worked on its own but im too scared to change it
		var obj_name = object_get_name(ds_list_find_value(objects, i).object_index);
		show_debug_message(obj_name);
		ds_list_set(objects, i, obj_name);
	}
}