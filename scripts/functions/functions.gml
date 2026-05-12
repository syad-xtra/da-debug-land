// had to make a script because......? i had this somewhere else but it didnt work. but now it does
// spawns a new thing, and destroys the other two things. unfortunately sometimes spawns two new things
// but uhhhh. this is a debug space shut up i aint selling this game
// nvm i fixed it 👆

function itemMerger(){
	combo = ob_control.combo;
	// need this so i can actually delete the two closest instances
	var objects_index = ob_click.objects;
	indexToObject(objects);
	// SORT after convert. vivien. not before. you. youuuuuuuu
	seeContent();
	// dear god this thing. it reads through the combos then looks for a matching set of combos
	// does nothing if it finds nothing
	// technology!
	// could this be done better? prooooooobably.
	var selected_object = object_get_name(selected_item.object_index);
	var objects_array = array_create(0);
	objects_array = listToArray(objects, objects_array);
	for (var i=0; i<array_length(combo); i++){
			for (var e=1; e<array_length(combo[i]); e++){
				 if (!valueArray(combo[i][e], selected_object) or merged){ continue; } // skip loop
				 
				var sel_pos = positionArray(combo[i][e], selected_object);
				var comb_pos = 0;
				if (sel_pos = 0){comb_pos = 1;}
				var pos1 = combo[i][e][comb_pos];
				var pos2 = combo[i][e][sel_pos];
				
				if (!valueArray(objects_array,combo[i][e][comb_pos])){ continue; } // skip loop
				
				var result = asset_get_index(combo[i][0][0]);
				show_debug_message(selected_item);
				merge(pos1, pos2, result);
				
				if (combo[i][0][2] = false){
				combo[i][0][2] = true;
				show_debug_message(combo[i][0][1] + " is now unlocked.")
				}
				else{show_debug_message(combo[i][0][1] + " is already known.")}
					
				// behold the carcass of my previous code...
				
				//if (combo[i][e][0] = ds_list_find_value(objects, 0) and combo[i][e][1] = ds_list_find_value(objects, 1)){
				//	show_debug_message("combo works");
				//	var result = asset_get_index(combo[i][0][0]);
				//	instance_create_layer(selected_item.x, selected_item.y, "Instances", result);
				//	// dear god this thing too
				//	// technically i only need it to delete two things. but well. i lazy
				//	// THREE FOR LOOPS BTW. IVE GONE MAD
				//	for (var o=0;o<2;o++){
				//		// youre not gonna catch me write this out 👇 again
				//		var object = asset_get_index(ds_list_find_value(objects_index, o));
				//		instance_destroy(instance_nearest(mouse_x, mouse_y,object));
				//	}
				//	// for unlocking functionality
				//	if (combo[i][0][2] = false){
				//	combo[i][0][2] = true;
				//	show_debug_message(combo[i][0][1] + " is now unlocked.")
				//	}
				//	else{show_debug_message(combo[i][0][1] + " is already known.")}
				//}
			}
	}
	if (!merged){merge(objects_array[0],selected_object, ob_sludge);}
	// for good measure
	ds_list_clear(objects_index);
}

function merge(pos1, pos2, result){
	instance_create_layer(selected_item.x, selected_item.y, "Instances", result);
	var object = asset_get_index(pos1);
	instance_destroy(instance_nearest(mouse_x, mouse_y,object));
	object = asset_get_index(pos2);
	instance_destroy(instance_nearest(mouse_x, mouse_y,object));
	merged = true;
}

// i love my debug <3
function seeContent(){
	show_debug_message("Selected item list: ");
	for (var i=0; i<ds_list_size(objects); i+=1)
	{show_debug_message(string(ds_list_find_value(objects, i)))}
}

// collision rectangle list returns instance ids so converting them to object names it is....
function indexToObject(list){
	for (var i=0; i<ds_list_size(list); i+=1){
		// honestly speaking maybe just .object_index would've worked on its own but im too scared to change it
		var obj_name = object_get_name(ds_list_find_value(list, i).object_index);
		show_debug_message(obj_name);
		ds_list_set(list, i, obj_name);
	}
}


function objectNameToSprite(ob_name){
	var result = asset_get_index(ob_name);
	result = object_get_sprite(result);
	return result;
}

//timer

function timer(time){
	var time_min = floor(ob_control.alarm[time]/3600);
	var time_sec = ob_control.alarm[time];
	if (ob_control.alarm[time] >= 3600){time_sec = ob_control.alarm[0]%3600;}
	time_sec = floor(time_sec/60);
	if (time_sec >= 10){time_sec = string(time_min) + ":" + string(time_sec);}
	else{time_sec = string(time_min) + ":0" + string(time_sec);}
	return time_sec;
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

// this is SO stupid
function setUIHeight(element){
	element.image_yscale = 1;
	element.image_yscale = room_height/element.sprite_height;
}

function listToArray(list, array){
	for (var i=0; i<ds_list_size(list); i+=1){
		array_insert(array, i, ds_list_find_value(list, i));
	}
	return array;
}

// checks if array has a value
function valueArray(array, value){
	for (var i = 0; i < array_length(array); i++){
		if (array[i] = value){return true;}
	}
}

// checks for position of value in array
function positionArray(array, value){
	for (var i = 0; i < array_length(array); i++){
		if (array[i] = value){return i;}
	}
}


function scaleGradual(spd, rate){
	image_alpha += spd;
	image_xscale += spd*rate;
	image_yscale += spd*rate;
}

function callImage(fx, fy, index){
	var inst = instance_create_layer(fx, fy, "visual_sound", ob_vis_effect);
	inst.image_index = index;
}