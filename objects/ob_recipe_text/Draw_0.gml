// checks if mouse enter is true, then draws the amount of recipes unlocked out of max amount of recipes
if (book.show_text){
	var text = string(book.unlock_number) + "/" + string(array_length(book.combo));
	var width = string_width(text);
	width = width-book.sprite_width;
	var height = string_height(text);
	height = height-book.sprite_height;
	// i need to half it? for some reason?
	// but it centers
	draw_text(book.x-width/2,book.y-height/2,text);
}