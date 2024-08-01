accept_key = keyboard_check_pressed(vk_space);

textbox_x = 0;
textbox_y = 50;

/************
	setup
************/
if setup == false
{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
		
	//loops through pages
	for (var p=0;p<page_number;p++)
	{
		text_length[p] = string_length((text[p]))
			
		text_x_offset[p] = 0;
			
	}
}	

/*************************
	flip through pages
*************************/
if accept_key
{
	//if typing is done
	if draw_char == text_length[page]
	{
		//next page
		if page < page_number-1
		{
			page++;
			draw_char = 0;
		}
		//destroys
		else
		{
			//link text for options
			if option_number > 0
			{
				create_textbox(option_link_id[option_pos])
			}
			end_text(self)
		}
	}
	else
	{
		draw_char = text_length[page];
	}
}

/**********************
	typing the text
**********************/

if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);;
}

/*************************
	  draws textbox
*************************/
var _txtb_x = textbox_x
var _txtb_y = textbox_y
txtb_img = txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr)
txtb_spr_h = sprite_get_height(txtb_spr)
txtb2_spr_w = sprite_get_width(txtb2_spr)
txtb2_spr_h = sprite_get_height(txtb2_spr)

//draws textbox Sprite
draw_sprite_ext(spr_textBox, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, 6, 0, c_white, 1)

/*************************
	branching options
*************************/
//switches between options
option_pos += keyboard_check(vk_down) - keyboard_check(vk_up)
option_pos += keyboard_check(ord("S")) - keyboard_check(ord("W"))
option_pos = clamp(option_pos, 0, option_number-1)

if draw_char == text_length[page] && page == page_number -1
{

	var _op_space = 15
	var _op_bord = 4
	for (var op=0;op<option_number;op++)
	{
		//draws box
		var _option_w = string_width(option[op]) + _op_bord*2
		var _name_w = string_width(name) + _op_bord*2 + 1
		draw_sprite_ext(txtb2_spr, txtb_img, _txtb_x + _name_w, _txtb_y - _op_space*option_number + _op_space*op, _option_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0 ,c_white, 1)

		//draws arrow
		if option_pos == op
		{
			draw_sprite(spr_pointer2, 0, _txtb_x + _option_w + _name_w, _txtb_y - _op_space*option_number + _op_space*op);
		}
		
		//option text
		draw_text_color(_txtb_x + _op_bord +_name_w, _txtb_y - _op_space*option_number + _op_space*op, option[op],c_black,c_black,c_black,c_black,1)
		
	}
	
}


//draws text
_op_bord = 4
var _drawText = string_copy(text[page], 1, draw_char);
var _drawName = string_copy(name,1,real);
var _name_w = string_width(name) + _op_bord*2
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawText, line_sep, line_width)

//draws name
if string_width(name)>0
{
	draw_sprite_ext(txtb2_spr, txtb_img, _txtb_x, _txtb_y - border*2, _name_w/txtb2_spr_w, .75, 0 ,c_white, 1)
	draw_text_color(_txtb_x+_op_bord, _txtb_y - border*2, _drawName,c_black,c_black,c_black,c_black,1)
}