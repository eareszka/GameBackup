////draw_set_alpha(.25)

////if array_length(oBattle.partyUnits)>3//full party
////{

////	draw_sprite_stretched(global.battleBox,0,x+60,y+166,260,50);

////	draw_set_font(fnM3x6);
////	draw_set_valign(fa_top);
////	draw_set_color(c_white);


////	for (var i = 0; i < array_length(oBattle.partyUnits); i++)
////	{
////		draw_set_color(c_white);
////		var _char = oBattle.partyUnits[i];
	
////		draw_set_halign(fa_middle);
//		//if !instance_exists(oMenu)||!(_char.myTurn){draw_text_transformed((x+92)+(i*65),y+166,_char.name,1.50,1.10,0);}
//		//if !instance_exists(oMenu)&&(_char.myTurn){draw_set_color(c_yellow) draw_text_transformed((x+92)+(i*65),y+166,_char.name,1.50,1.10,0);}
//		//if (_char.myTurn)&&instance_exists(oMenu){draw_set_color(c_yellow);	draw_text_transformed((x+92)+(i*65),y+166,oMenu.optionName,1.50,1.10,0);}
	
////		draw_set_halign(fa_left);
////		if (_char.hp <= 0) draw_set_color(c_red);
	
////		draw_set_color(c_white);
////		if (_char.hp < (ceil(power(_char.hpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+70)+(i*65),y+178,string(_char.hp) + "/" + string(_char.hpMax)+" HP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		if (_char.mp < (ceil(power(_char.mpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+70)+(i*65),y+188,string(_char.mp) + "/" + string(_char.mpMax)+" MP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		draw_text_ext_transformed((x+70)+(i*65),y+198,string(_char.strength)+" STR",-1,-1,1.25,1.25,0);
	
////	}
////}


////if array_length(oBattle.partyUnits)=3//3 party
////{

////	draw_sprite_stretched(global.battleBox,0,x+92,y+166,200,50);

////	draw_set_font(fnM3x6);
////	draw_set_valign(fa_top);
////	draw_set_color(c_white);


////	for (var i = 0; i < array_length(oBattle.partyUnits); i++)
////	{
////		draw_set_color(c_white);
////		var _char = oBattle.partyUnits[i];
	
////		draw_set_halign(fa_middle);
////		if !instance_exists(oMenu)||!(_char.myTurn){draw_text_transformed((x+124)+(i*65),y+166,_char.name,1.50,1.10,0);}
////		if !instance_exists(oMenu)&&(_char.myTurn){draw_set_color(c_yellow) draw_text_transformed((x+124)+(i*65),y+166,_char.name,1.50,1.10,0);}
////		if (_char.myTurn)&&instance_exists(oMenu){draw_set_color(c_yellow);	draw_text_transformed((x+124)+(i*65),y+166,oMenu.optionName,1.50,1.10,0);}
	
////		draw_set_halign(fa_left);
////		if (_char.hp <= 0) draw_set_color(c_red);
	
////		draw_set_color(c_white);
////		if (_char.hp < (ceil(power(_char.hpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+102)+(i*65),y+178,string(_char.hp) + "/" + string(_char.hpMax)+" HP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		if (_char.mp < (ceil(power(_char.mpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+102)+(i*65),y+188,string(_char.mp) + "/" + string(_char.mpMax)+" MP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		draw_text_ext_transformed((x+102)+(i*65),y+198,string(_char.strength)+" STR",-1,-1,1.25,1.25,0);
	
////	}
////}


////if array_length(oBattle.partyUnits)=2//2 party
////{

////	draw_sprite_stretched(global.battleBox,0,x+128,y+166,128,50);

////	draw_set_font(fnM3x6);
////	draw_set_valign(fa_top);
////	draw_set_color(c_white);


////	for (var i = 0; i < array_length(oBattle.partyUnits); i++)
////	{
////		draw_set_color(c_white);
////		var _char = oBattle.partyUnits[i];
	
////		draw_set_halign(fa_middle);
////		if !instance_exists(oMenu)||!(_char.myTurn){draw_text_transformed((x+156)+(i*65),y+166,_char.name,1.50,1.10,0);}
////		if !instance_exists(oMenu)&&(_char.myTurn){draw_set_color(c_yellow) draw_text_transformed((x+156)+(i*65),y+166,_char.name,1.50,1.10,0);}
////		if (_char.myTurn)&&instance_exists(oMenu){draw_set_color(c_yellow);	draw_text_transformed((x+156)+(i*65),y+166,oMenu.optionName,1.50,1.10,0);}
	
////		draw_set_halign(fa_left);
////		if (_char.hp <= 0) draw_set_color(c_red);
	
////		draw_set_color(c_white);
////		if (_char.hp < (ceil(power(_char.hpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+134)+(i*65),y+178,string(_char.hp) + "/" + string(_char.hpMax)+" HP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		if (_char.mp < (ceil(power(_char.mpMax,1/1.5)))) draw_set_color(c_orange)
////		if (_char.hp <= 0) draw_set_color(c_red);
////		draw_text_ext_transformed((x+134)+(i*65),y+188,string(_char.mp) + "/" + string(_char.mpMax)+" MP",-1,-1,1.25,1.25,0);
	
////		draw_set_color(c_white);
////		draw_text_ext_transformed((x+134)+(i*65),y+198,string(_char.strength)+" STR",-1,-1,1.25,1.25,0);
	
////	}
////}


////if array_length(oBattle.partyUnits)=1//1 party
////{

////	draw_sprite_stretched(global.battleBox,0,x+160,y+166,64,50);

////	draw_set_font(fnM3x6);
////	draw_set_valign(fa_top);
////	draw_set_color(c_white);


//	for (var i = 0; i < array_length(oBattle.partyUnits); i++)
//	{
//		draw_set_color(c_white);
//		var _char = oBattle.partyUnits[i];
	
//		draw_set_halign(fa_middle);
//		if !instance_exists(oMenu)||!(_char.myTurn){draw_text_transformed((x+188)+(i*65),y+166,_char.name,1.50,1.10,0);}
//		if !instance_exists(oMenu)&&(_char.myTurn){draw_set_color(c_yellow) draw_text_transformed((x+188)+(i*65),y+166,_char.name,1.50,1.10,0);}
//		if (_char.myTurn)&&instance_exists(oMenu){draw_set_color(c_yellow);	draw_text_transformed((x+188)+(i*65),y+166,oMenu.optionName,1.50,1.10,0);}
	
//		draw_set_halign(fa_left);
//		if (_char.hp <= 0) draw_set_color(c_red);
	
//		draw_set_color(c_white);
//		if (_char.hp < (ceil(power(_char.hpMax,1/1.5)))) draw_set_color(c_orange)
//		if (_char.hp <= 0) draw_set_color(c_red);
//		draw_text_ext_transformed((x+166)+(i*65),y+178,string(_char.hp) + "/" + string(_char.hpMax)+" HP",-1,-1,1.25,1.25,0);
	
//		draw_set_color(c_white);
//		if (_char.mp < (ceil(power(_char.mpMax,1/1.5)))) draw_set_color(c_orange)
//		if (_char.hp <= 0) draw_set_color(c_red);
//		draw_text_ext_transformed((x+166)+(i*65),y+188,string(_char.mp) + "/" + string(_char.mpMax)+" MP",-1,-1,1.25,1.25,0);
	
//		draw_set_color(c_white);
//		draw_text_ext_transformed((x+166)+(i*65),y+198,string(_char.strength)+" STR",-1,-1,1.25,1.25,0);	
//	}
//}

