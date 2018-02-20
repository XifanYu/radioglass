/// @description Move the player


if keyboard_check(ord("D")) && keyboard_check(ord("W")) //upper right
{
	x=x+sqrt(8);
	y=y-sqrt(8);
}

else if keyboard_check(ord("A")) && keyboard_check(ord("W")) //upper left
{
	x=x-sqrt(8);
	y=y-sqrt(8);
}

else if keyboard_check(ord("D")) && keyboard_check(ord("S")) //lower right
{
	x=x+sqrt(8);
	y=y+sqrt(8);
}

else if keyboard_check(ord("A")) && keyboard_check(ord("S"))//lower left
{
	x=x-sqrt(8);
	y=y+sqrt(8);
}

else if keyboard_check(ord("D"))
{
	x=x+4;
}

else if keyboard_check(ord("A"))
{
	x=x-4;
}

else if keyboard_check(ord("W"))
{
	y=y-4;
}

else if keyboard_check(ord("S"))
{
	y=y+4;
}

else {}


var atk_chosen = -1;
switch(keyboard_lastkey) {
	case ord("1"):
		atk_chosen = 0; show_debug_message(string(atk_chosen)); break;
	case ord("2"):
		atk_chosen = 1; show_debug_message(string(atk_chosen)); break;
	case ord("3"):
		atk_chosen = 2; show_debug_message(string(atk_chosen)); break;
	case ord("4"):
		atk_chosen = 3; show_debug_message(string(atk_chosen)); break;
	case ord("5"):
		atk_chosen = 4; show_debug_message(string(atk_chosen)); break;
}

if((atk_chosen != -1) && attacks[atk_chosen] != -1) {
	curr_attack = attacks[atk_chosen];
	show_debug_message(string(curr_attack));
}

depth = -y + 16;