if count
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	//choose ammount menu
	draw_sprite_stretched(sBox,0,x+24,y+20,72,78);
	draw_text(x+35,y+24,"How Many?")
	draw_text_ext(x+35,y+39,"1 2 3 4 5",10,10)

	draw_set_halign(fa_right);
	draw_text_ext(x+90,y+39,"$"+string(item.price)+"     "+"$"+string(item.price*2)+"     "+"$"+string(item.price*3)+"     "+"$"+string(item.price*4)+"    "+"$"+string(item.price*5),10,40)
	draw_sprite_stretched(spr_pointer, 0, x+24, y + arrowPos, 15,15);
}
if confirm
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	//confirm yes or no
	draw_sprite_stretched(sBox,0,x+24,y+20,72,52);
	draw_text(x+35,y+24,"Confirm")
	draw_text_ext(x+35,y+39,"Yes No",10,10)
	draw_sprite_stretched(spr_pointer, 0, x+24, y + arrowPos, 15,15);	
}


/********
item desc
********/
var _stringl = string_length(item.info)
if draw_char < _stringl
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, _stringl);
}

	
var _drawText = string_copy(item.info, 1, draw_char);
var _w = 160
draw_sprite_stretched(sBox,0,x+192-(_w*0.5),y+24,_w,textBoxHeight);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_ext(x+200-(_w*0.5),y+26,_drawText,12,150)
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

