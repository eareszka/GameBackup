//draws item info
if item!=-1
{
	var _stringl = string_length(item.info)
	if draw_char < _stringl
	{
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, _stringl);
	}

	
	var _drawText = string_copy(item.info, 1, draw_char);
	var _w = 160
	draw_sprite_stretched(global.battleBox,0,x+200-(_w*0.5),y+4,_w,textBoxHeight);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_font(fnM5x7)
	draw_text_ext(x+208-(_w*0.5),y+6,_drawText,12,150)
	//draw_text(x+200-(_w*0.5),y+10,_drawText);

	if draw_char > 23
	{
		textBoxHeight = 35		
	
		if draw_char > 46
		{
			textBoxHeight = 49
		}
			if draw_char > 75
			{
				textBoxHeight = 66
			}
	}
}
