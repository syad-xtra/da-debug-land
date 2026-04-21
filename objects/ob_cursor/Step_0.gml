x = mouse_x;
y = mouse_y;

var hovering = instance_position(x, y, ob_hoverable);
if hovering != noone{
	image_index = 1;
}
else{image_index = 0;}