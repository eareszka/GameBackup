//Draws party stats
if global.jen=1&&global.broke = 1&&global.fin=1
{
	maxHover=3
	if hover = 0 arrowPos = 65
	if hover = 1 arrowPos = 139
	if hover = 2 arrowPos = 197
	if hover = 3 arrowPos = 268
	draw_sprite_stretched(sBox,0,x+60,y+176,265,40);
	
	draw_set_font(fnM3x6);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_set_halign(fa_middle);
	
	if hover = 0{draw_set_color(c_yellow)}
	draw_text_transformed((x+92),y+176,"Emory",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 1{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+65),y+176,"Fin",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 2{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+130),y+176,"Broke",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 3{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+195),y+176,"Jen",1.50,1.10,0);
	draw_set_color(c_white)
	
	draw_set_halign(fa_left)
	draw_text_transformed((x+66),y+188,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+65),y+188,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+130),y+188,string(global.BcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+195),y+188,string(global.JcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
	
	draw_text_transformed((x+66),y+198,string(global.EcurrentMP) + "/" + string(20+global.mpAdd,)+" MP",1.40,1.10,0);
	draw_text_transformed((x+66+65),y+198,"0/0 MP",1.40,1.10,0);
	draw_text_transformed((x+66+130),y+198,string(global.BcurrentMP) + "/" + string(round(50+(global.mpAdd*2)))+" MP",1.40,1.10,0);
	draw_text_transformed((x+66+195),y+198,string(global.JcurrentHP) + "/" + string(round(50+(global.mpAdd*1.8)))+" MP",1.40,1.10,0);
	
}
	
if global.jen=0&&global.broke = 1&&global.fin=1
{
	maxHover=2
	if hover = 0 arrowPos = 105
	if hover = 1 arrowPos = 178
	if hover = 2 arrowPos = 237
	draw_sprite_stretched(sBox,0,x+100,y+176,196,40);
	
	draw_set_font(fnM3x6);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_set_halign(fa_middle);
	if hover = 0{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+40),y+176,"Emory",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 1{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+65+40),y+176,"Fin",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 2{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+130+40),y+176,"Broke",1.50,1.10,0);
	draw_set_color(c_white)
	
	draw_set_halign(fa_left)
	draw_text_transformed((x+66+40),y+188,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+65+40),y+188,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+130+40),y+188,string(global.BcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
	
	draw_text_transformed((x+66+40),y+198,string(global.EcurrentMP) + "/" + string(20+global.mpAdd,)+" MP",1.40,1.10,0);
	draw_text_transformed((x+66+65+40),y+198,"0/0 MP",1.40,1.10,0);
	draw_text_transformed((x+66+130+40),y+198,string(global.BcurrentMP) + "/" + string(round(50+(global.mpAdd*2)))+" MP",1.40,1.10,0);
}
	
if global.jen=0&&global.broke = 0&&global.fin=1
{
	maxHover=1
	if hover = 0 arrowPos = 143
	if hover = 1 arrowPos = 216
	
	draw_sprite_stretched(sBox,0,x+140,y+176,132,40);
	
	draw_set_font(fnM3x6);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_set_halign(fa_middle);
	if hover = 0{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+80),y+176,"Emory",1.50,1.10,0);
	draw_set_color(c_white)
	if hover = 1{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+65+80),y+176,"Fin",1.50,1.10,0);
	draw_set_color(c_white)
	draw_set_halign(fa_left);
	draw_text_transformed((x+66+80),y+188,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+65+80),y+188,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
	draw_text_transformed((x+66+80),y+198,string(global.EcurrentMP) + "/" + string(20+global.mpAdd,)+" MP",1.40,1.10,0);
	draw_text_transformed((x+66+65+80),y+198,"0/0 MP",1.40,1.10,0);
}
	
if global.jen=0&&global.broke = 0&&global.fin=0
{
	maxHover=0
	if hover = 0 arrowPos = 182
	
	draw_sprite_stretched(sBox,0,x+180,y+176,65,40);
	
	draw_set_font(fnM3x6);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_set_halign(fa_middle);
	if hover = 0{draw_set_color(c_yellow)}
	draw_text_transformed((x+92+117.5),y+176,"Emory",1.50,1.10,0);
	draw_set_color(c_white)
	draw_set_halign(fa_left);
	draw_text_transformed((x+66+117.5),y+188,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0)
	draw_text_transformed((x+66+117.5),y+198,string(global.EcurrentMP) + "/"+ string(20+global.mpAdd,)+" MP",1.40,1.10,0);;
}

//draws arrow selection
draw_sprite_stretched(spr_pointer,0,arrowPos,176,15,15)
	
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

