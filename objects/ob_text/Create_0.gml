// you may wonder.
// cant you draw the font over ob_recipe_book? why make a new object
// and i did do that. actually.
// i did this cause i cant set font effects in this version of game maker
// ^^^ killing myself
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
chosen = noone;
offset = 20;

// screw it just gonna use this for every text item
combo = ob_control.combo;
book = ob_recipe_book;
customer = ob_customer;
select = ob_selectable;