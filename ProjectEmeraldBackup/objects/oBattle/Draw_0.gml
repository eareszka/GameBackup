draw_sprite_tiled(battleBackground,-1,x,y)
switch battleBackground
{
	case spr_battleBackground1:
		global.battleBox=sBox
	break
	
	case spr_battleBackground2:
		global.battleBox=sBox2
	break
	
	case spr_battleBackground3:
		global.battleBox=sBox3
	break
	
	case spr_battleBackground4:
		global.battleBox=sBox4
	break
}

image_speed = .5

//Draw units in depth order
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
		if (myTurn) && (!enemy) && (instance_exists(oMenu)) draw_sprite(sTurnIndicator, 0, x, y);
	}
}

if (targetCursor.cursorActive) && endTimer = 80
{
	with (targetCursor)
	{
		if (cursorTarget != noone) 
		{
			if (is_array(cursorTarget))
			{
				draw_set_alpha(sin(get_timer()/50000)+1);
				for (var i = 0; i < array_length(cursorTarget); i++)
				{
					draw_sprite(spr_pointer,cursorError,cursorTarget[i].x,cursorTarget[i].y);
				}
				draw_set_alpha(1.0);
			}
			else draw_sprite_ext(spr_pointer,cursorError,cursorTarget.x,cursorTarget.y,1,1,0,c_white,1);
			//else draw_sprite_ext(SselectedCharacterOutline,cursorError,cursorTarget.x,cursorTarget.y,1,1,0,c_white,1);

		}
	}
}

//Draw battle text
if (battleText != "") && !instance_exists(obj_textBoxBattle)
{
	draw_set_font(fnOpenSansPX)
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	//typing text
	var _stringl = string_length(battleText)
	if draw_char < _stringl
	{
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, _stringl);
	}
	else
	{
		battleMessageClear--	
	}
	
	var _drawText = string_copy(battleText, 1, draw_char);
	var _w = string_width(battleText)+20;
	draw_sprite_stretched(global.battleBox,0,x+192-(_w*0.5),y+5,_w,25);
	draw_text(x+200-(_w*0.5),y+10,_drawText);
	
	//Continue arrow for multi message
	if battleMessageClear <= 0
	{
		draw_sprite(sDownArrow,0,x + 192, y + 35);	
	}
}
else
{
	if instance_exists(oMenu) && oMenu.active = true
	{
		draw_char = 0	
	}
}


if instance_exists(oMenu) && oMenu.active = false && item != -1
{
	oMenu.visible = false
	var _stringl = string_length(item.description)
	if draw_char < _stringl
	{
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, _stringl);
	}

	
	var _drawText = string_copy(item.description, 1, draw_char);
	var _w = 200
	draw_sprite_stretched(global.battleBox,0,x+192-(_w*0.5),y+5,_w,textBoxHeight);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text_ext(x+200-(_w*0.5),y+10,_drawText,12,_w)
	//draw_text(x+200-(_w*0.5),y+10,_drawText);
	if draw_char >= 29
	{
		textBoxHeight = 35		
	
		if draw_char >= 48
		{
			textBoxHeight = 48
		}
	}
}


//for bomb run only
if global.flag[23]=1
{
	global.bombTimer-=.016
	draw_sprite_stretched(global.battleBox,0,x+320,y+5,60,16)
	draw_set_font(E1234)
	draw_set_halign(fa_right)
	draw_set_color(c_white)
	draw_text_transformed(x+375,y+9,string(global.bombTimer),1,1,0)
}