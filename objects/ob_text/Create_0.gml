// you may wonder.
// cant you draw the font over ob_recipe_book? why make a new object
// and i did do that. actually.
// i did this cause i cant set font effects in this version of game maker
// ^^^ killing myself
draw_set_font(fnt_large);
chosen[0] = noone;
offset_x = 12;
offset_y = 24;

// screw it just gonna use this for every text item
combo = ob_control.combo;
control = ob_control;
book = ob_recipe_book;
customer = ob_customer;
select = ob_selectable;
txt_box = sp_text_box;

// lord help me i'm doing multi dimensional arrays again
// im not bothering with the text function in this app
text_opt[0][0] = "I have an army";
text_opt[0][1] = "of lawyers.";
text_opt[1][0] = "I'm literally going";
text_opt[1][1] = "to kill myself.";
text_opt[2][0] = "What's wrong";
text_opt[2][1] = "with you?";
text_opt[3][0] = "Yay, thanks!";
text_opt[3][1] = noone;
text_opt[4][0] = "This is the best";
text_opt[4][1] = "thing ever.";
text_opt[5][0] = "Hell yes...";
text_opt[5][1] = noone;