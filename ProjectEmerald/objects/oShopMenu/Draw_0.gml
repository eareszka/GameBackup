var _w = string_width("description")/2;
	if subMenuLevel = 0
	{
		draw_sprite_stretched(sBox,0,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+y,widthFull,heightFull);
		draw_sprite_stretched(sBox,0,camera_get_view_x(view_camera[0])+x+widthFull+5,camera_get_view_y(view_camera[0])+y,(string_length(global.my_Money)*6)+xmargin*2,20);
	}
	draw_set_colour(c_white);
	draw_set_font(fnM5x7);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	var _desc = !(description == -1);
	var _scrollPush = max(0, hover - (visibleOptionsMax-1));

	for (l = 0; l < (visibleOptionsMax + _desc); l++)
	{
		if (l >= array_length(options)) break;
		draw_set_colour(c_white);
		if (l == 0) && (_desc) 
		{
			draw_text_transformed(camera_get_view_x(view_camera[0]) + xmargin + x, camera_get_view_y(view_camera[0]) + ymargin + y, description,1.10,1.10,0)
			//draw_text(camera_get_view_x(view_camera[0]) + xmargin + x, camera_get_view_y(view_camera[0]) + ymargin + y, description)
		}
		else
		{
			var _optionToShow = l-_desc+_scrollPush;
			var _str = options[_optionToShow][0]
			var _price = "$"+string(options[_optionToShow][3])

			if (hover == _optionToShow - _desc) 
			{
				draw_set_colour(c_yellow);
			}
			if subMenuLevel = 0
			{
				//draws prices
				if _price != "$-1" {draw_set_halign(fa_right); draw_text_transformed(camera_get_view_x(view_camera[0]) + 2 + xmargin + x + 110, camera_get_view_y(view_camera[0]) - 12 + ymargin + l * heightLine + y, _price,1.10,1.10,0);}
				draw_set_halign(fa_left);
				draw_text_transformed(camera_get_view_x(view_camera[0]) + 2 + xmargin + x, camera_get_view_y(view_camera[0]) - 12 + ymargin + l * heightLine + y, _str,1.10,1.10,0);	
				draw_set_colour(c_white);
				draw_text(camera_get_view_x(view_camera[0])+x+widthFull+2+xmargin,camera_get_view_y(view_camera[0]) - 12 + ymargin + y,"$"+string(global.my_Money))
			}
			if subMenuLevel >= 1
			{
				draw_text_transformed(camera_get_view_x(view_camera[0]) + 2 + xmargin + x, camera_get_view_y(view_camera[0]) - 12 + ymargin + l * heightLine + y, _str,1.10,1.10,0);
			}
		}
	}
	if subMenuLevel = 0
	{
		draw_sprite_stretched(spr_pointer, 0, camera_get_view_x(view_camera[0]) - 10 + xmargin + x, camera_get_view_y(view_camera[0]) - 20 + ymargin + ((hover-_scrollPush) * heightLine)+7 + y, 15,15);
	}
	if subMenuLevel >= 1
	{
		draw_sprite_stretched(spr_pointer, 0, camera_get_view_x(view_camera[0]) - 10 + xmargin + x, camera_get_view_y(view_camera[0]) - 20 + ymargin + ((hover-_scrollPush) * heightLine)+7 + y, 15,15);
	} 
	if (visibleOptionsMax < array_length(options)) && (hover < array_length(options)-1) draw_sprite_ext(sDownArrow,-1,camera_get_view_x(view_camera[0]) + 14.8 + widthFull*0.5, camera_get_view_y(view_camera[0]) - 51 + heightFull,1.2,1.2,0,c_white,1);
