draw_set_alpha(alpha)
if hpOnly
{
	if global.jen=1&&global.broke = 1&&global.fin=1
	{
		draw_sprite_stretched(sBox,0,x+60,y+186,280,30);
	
		draw_set_font(fnM3x6);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
	
		draw_set_halign(fa_middle);
		draw_text_transformed((x+92),y+186,"Emory",1.50,1.10,0);
		draw_text_transformed((x+92+65),y+186,"Fin",1.50,1.10,0);
		draw_text_transformed((x+92+130),y+186,"Broke",1.50,1.10,0);
		draw_text_transformed((x+92+195),y+186,"Jen",1.50,1.10,0);
		draw_set_halign(fa_left);
		draw_text_transformed((x+66),y+198,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+65),y+198,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+130),y+198,string(global.BcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+195),y+198,string(global.JcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
	}
	
	if global.jen=0&&global.broke = 1&&global.fin=1
	{
		draw_sprite_stretched(sBox,0,x+100,y+186,192,30);
	
		draw_set_font(fnM3x6);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
	
		draw_set_halign(fa_middle);
		draw_text_transformed((x+92+40),y+186,"Emory",1.50,1.10,0);
		draw_text_transformed((x+92+65+40),y+186,"Fin",1.50,1.10,0);
		draw_text_transformed((x+92+130+40),y+186,"Broke",1.50,1.10,0);
		draw_set_halign(fa_left);
		draw_text_transformed((x+66+40),y+198,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+65+40),y+198,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+130+40),y+198,string(global.BcurrentHP) + "/" + string(round(100+(global.hpAdd*1.5)))+" HP",1.40,1.10,0);
	}
	
	if global.jen=0&&global.broke = 0&&global.fin=1
	{
		draw_sprite_stretched(sBox,0,x+140,y+186,132,30);
	
		draw_set_font(fnM3x6);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
	
		draw_set_halign(fa_middle);
		draw_text_transformed((x+92+80),y+186,"Emory",1.50,1.10,0);
		draw_text_transformed((x+92+65+80),y+186,"Fin",1.50,1.10,0);
		draw_set_halign(fa_left);
		draw_text_transformed((x+66+80),y+198,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
		draw_text_transformed((x+66+65+80),y+198,string(global.FcurrentHP) + "/" + string(round(50+(global.hpAdd*1.2)))+" HP",1.40,1.10,0);
	}
	
	if global.jen=0&&global.broke = 0&&global.fin=0
	{
		draw_sprite_stretched(sBox,0,x+180,y+186,65,30);
	
		draw_set_font(fnM3x6);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
	
		draw_set_halign(fa_middle);
		draw_text_transformed((x+92+117.5),y+186,"Emory",1.50,1.10,0);
		draw_set_halign(fa_left);
		draw_text_transformed((x+66+117.5),y+198,string(global.EcurrentHP) + "/" + string(20+global.hpAdd)+" HP",1.40,1.10,0);
	}
}