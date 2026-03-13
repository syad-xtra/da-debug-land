/// @description Insert description here
// You can write your code in this editor

if ob_src.selected = false{
	if (selected = true){
		instance_create_layer(x, y, "Instances", ob_creation);
		selected = false;
		instance_destroy();
		instance_destroy(other);
	}
}
