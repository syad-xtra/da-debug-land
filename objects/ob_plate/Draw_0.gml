/// @description Insert description here
// You can write your code in this editor

draw_self();

switch (base_ing){
	case 0:
		text = "Blood";
	break;
	case 1:
		text = "Bile Oils";
	break;
	case 2:
		text = "Brains";
	break;
	case 3:
		text = "Eyeballs";
	break;
	case 4:
		text = "Sewer Algae";
	break;
	case 5:
		text = "Mushrooms";
	break;
}

smallCenteredText();
draw_text(x + sprite_width/2.05, y + sprite_height/1.7, text);