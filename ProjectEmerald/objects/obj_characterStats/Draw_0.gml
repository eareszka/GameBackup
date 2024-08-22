draw_sprite_stretched_ext(sBoxbu,1,xPos,yPos,64,50,c_white,1)
draw_sprite_stretched_ext(sBoxbu,0,xPos,yPos,64,50,c_white,alpha)

draw_set_alpha(alpha)


draw_set_font(fnM3x6);
draw_set_valign(fa_top);
draw_set_color(c_white);


//name
draw_set_halign(fa_middle);
draw_text_ext_transformed(xPos+32,yPos,string(name),-1,-1,1.5,1,0);

draw_set_halign(fa_left);

//healthbar
draw_sprite_stretched_ext(spr_healthAmmount,0,xPos+6,yPos+17,((hp/hpMax)*healthBarWidth),healthBarHeight,c_lime,alpha)
draw_sprite_stretched_ext(spr_healthBorder,0,xPos+5,yPos+16,30,8,c_white,alpha)

draw_text_ext_transformed(xPos+37,yPos+10,string(hp)+":HP",-1,-1,1,1.25,0);

//mpBar
draw_sprite_stretched_ext(spr_healthAmmount,0,xPos+6,yPos+27,((mp/mpMax)*healthBarWidth),healthBarHeight,c_teal,alpha)
draw_sprite_stretched_ext(spr_healthBorder,0,xPos+5,yPos+26,30,8,c_white,alpha)

draw_text_ext_transformed(xPos+37,yPos+20,string(mp)+":MP",-1,-1,1,1.25,0)

//str
draw_text_ext_transformed_color(xPos+5,yPos+30,"Strength:",-1,-1,.90,1.25,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_ext_transformed(xPos+37,yPos+30,string(str),-1,-1,1,1.25,0);


draw_set_font(fnOpenSansPX);

draw_set_alpha(1)
