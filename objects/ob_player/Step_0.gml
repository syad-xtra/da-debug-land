/// @description

// the final thing wont even have movement its just my debug land

if keyboard_check(ord("W")){
	y -= mvt_spd;
}

if keyboard_check(ord("S")){
	y += mvt_spd;
}

if keyboard_check(ord("A")){
	x -= mvt_spd;
}

if keyboard_check(ord("D")){
	x += mvt_spd;
}

move_wrap(x, y, 0)