x = mouse_x;
y = mouse_y;

var hovering = instance_position(mouse_x, mouse_y, all);
if hovering != noone{
	hovering = object_get_name(hovering.object_index);
	hovering = asset_get_index(hovering);
}

var temp = object_get_parent(hovering);
if (temp = ob_selectable){hovering = ob_selectable;}

switch (hovering){
	case ob_selectable:
	case ob_src:
	case ob_recipe_book:
	case ob_customer:
	case ob_button:
		image_index = 1;
	break;
	default:
		image_index = 0;
	break;
}