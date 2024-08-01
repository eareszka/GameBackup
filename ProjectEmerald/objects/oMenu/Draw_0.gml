var _w = string_width("description")/2;
var _desc = !(description == -1);
var _scrollPush = max(0, hover - (visibleOptionsMax-1));
var _optionsl = array_length(options)
if subMenuLevel = 1
{
	draw_sprite_stretched(global.battleBox,0,x+127,y-105,widthFull+_w,heightFull/2);
}
draw_set_colour(c_white);
draw_set_halign(fa_left);  
draw_set_valign(fa_top);
draw_set_font(fnM3x6);

if subMenuLevel = 0
{
	optionName = string(options[hover][0], 1);
}

if subMenuLevel = 1
{
	draw_set_font(fnM5x7);
	draw_set_halign(fa_left); 
	for (l = 0; l < (visibleOptionsMax + _desc); l++)
	{
		if (l >= array_length(options)) break;
		draw_set_colour(c_white);
		//first option
		if (l == 0) && (_desc) 
		{
			draw_text(x + xmargin, y + ymargin, description)
		}
		else
		{
			var _optionToShow = l-_desc+_scrollPush;
			var _str = options[_optionToShow][0]
			if (hover == _optionToShow - _desc) 
			{
				draw_set_colour(c_yellow);
			}
			if (options[_optionToShow][3] == false) draw_set_color(c_gray);
			draw_text(x + xmargin + 126, y -118 + ymargin + l * heightLine, _str);
		}
	}
}

if subMenuLevel = 1
{
	draw_sprite_stretched(spr_pointer, 0, x + xmargin + 115, y -126 + ymargin + ((hover-_scrollPush) * heightLine)+7, 15,15);
	if (visibleOptionsMax < array_length(options)) && (hover < array_length(options)-1) draw_sprite_ext(sDownArrow,-1,x + 145 + widthFull*0.5, y - 125 + heightFull - 7,1,1,0,c_white,1);
}









