/******************************************************
	this textbox is only used when
	the player can walk around while the text displays
*****************************************************/
oBattle.battleStopFlow=true
timer = 20

textbox_x = 0;
textbox_y = 0;
textbox_width = 100
textbox_height = 70
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
txtb_spr = spr_textBox;
txtb2_spr = spr_textBox2
txtb_img = 0;
txtb_img_spd = 0;

//text
page = 0;
page_number = 0;
text[0] = "";
name[0] = "";
name_length[0] =  string_length(name[0]);
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

//branching options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;
skipTurn = false

draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white)

//for oBattle
user = -1
enemy = -1
action = -1
targets = -1