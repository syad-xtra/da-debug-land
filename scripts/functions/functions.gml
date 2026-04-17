// had to make a script because......? i had this somewhere else but it didnt work. but now it does
// spawns a new thing, and destroys the other two things. unfortunately sometimes spawns two new things
// but uhhhh. this is a debug space shut up i aint selling this game
// nvm i fixed it 👆

function itemMerger(){
	combo = ob_control.combo;
	// need this so i can actually delete the two closest instances
	var objects_index = ob_click.objects;
	indexToObject();
	// SORT after convert. vivien. not before. you. youuuuuuuu
	ds_list_sort(objects, true);
	seeContent();
	// dear god this thing. it reads through the combos then looks for a matching set of combos
	// does nothing if it finds nothing
	// technology!
	for (var i=0; i<array_length(combo); i += 1){
			for (var e=1; e<array_length(combo[i]); e += 1){
				if (combo[i][e][0] = ds_list_find_value(objects, 0) and combo[i][e][1] = ds_list_find_value(objects, 1)){
					show_debug_message("combo works");
					var result = asset_get_index(combo[i][0][0]);
					instance_create_layer(selected_item.x, selected_item.y, "Instances", result);
					// dear god this thing too
					// technically i only need it to delete two things. but well. i lazy
					// THREE FOR LOOPS BTW. IVE GONE MAD
					for (var o=0;o<2;o+=1){
						// youre not gonna catch me write this out 👇 again
						var object = asset_get_index(ds_list_find_value(objects_index, o));
						instance_destroy(instance_nearest(mouse_x, mouse_y,object));
					}
					// for unlocking functionality
					if (combo[i][0][2] = false){
					combo[i][0][2] = true;
					show_debug_message(combo[i][0][1] + " is now unlocked.")
					}
					else{show_debug_message(combo[i][0][1] + " is already known.")}
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


function smallCenteredText(){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_small);
}

function largeCenteredText(){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_large);
}

function objectNameToSprite(ob_name){
	var result = asset_get_index(ob_name);
	result = object_get_sprite(result);
	return result;
}

// needs the asset NAME, not id
// this class is making me realize that im not that bad at coding
// i just need to actually code to get a feel for the concept
// which like. duh. but like we DIDNT CODE DURING COMPUTING A LEVEL??
// even though we had to learn it.
// it was all just... staring at powerpoints*! how useless!
// i learned nothing because we did nothing!
// we did more in the damn O level
// probably doesn't help that the lecturer disliked me for being a foreigner
// *and also having to buy said powerpoints for like €10
// only to learn that it didn't even cover half of first year
// GREEDY GREEDY GREEDY GREEDY!
// and somehow art A level was WORSE
// JC sucked man
// (this rant has been brought to you by me finally understanding what return does)
function checkUnlock(ing, combo){
	for (var i = 0; i < array_length(combo); i++){
		if (ing = combo[i][0][0]){
			if (combo[i][0][2]){return true;}
			else{return false;}
		}
	}
}

function checkName(ing, combo){
	for (var i = 0; i < array_length(combo); i++){
		if (ing = combo[i][0][0]){return combo[i][0][1];}
	}
}
