display_set_gui_size(384, 216);
width = 64;
height = 104;
op_length = 0;
menu_level = 0;
//position & selects options
pos = 1;
//how far from border
op_border = 8;
//space between options
op_space  = 16;

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space)

//puts array in step event so that it updates constantly
	option[0, 0] = "EmeraldRPG";
	option[0, 1] = "New Game";
	option[0, 2] = "Load Game";
	option[0, 3] = "Quit";

//store # of options in current menu
op_length = array_length(option[menu_level]);

//moves through menu
pos +=  down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};