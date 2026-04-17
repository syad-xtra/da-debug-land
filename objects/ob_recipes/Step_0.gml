// i wanted a smooth scroll effect. yays
// figuring this out was annoying
if mouse_wheel_up(){glide -= 4;}
if mouse_wheel_down(){glide += 4;}
show_debug_message("glide before: " + string(glide));
cam_y += glide;
if not mouse_wheel_down() or mouse_wheel_up(){glide -= sign(glide);}
show_debug_message("glide after: " + string(glide));
// dunno if a camera can scroll past the viewport, and i don't feel like testing it
// i'm writing most of this code on a notepad at my work placement lol
// can't really test my code rn
cam_y = clamp(cam_y, 0, room_height-camera_get_view_height(cam));
camera_set_view_pos(cam, 0, cam_y);
ob_recipe_book.y = book_initial_y + cam_y;
ob_recipe_book_grey.y = book_initial_y + cam_y;