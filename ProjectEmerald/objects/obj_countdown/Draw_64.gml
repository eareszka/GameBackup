if global.flag[23]=1
{
	draw_sprite_stretched(sBox,0,320,5,60,16)
	draw_set_font(E1234)
	draw_set_halign(fa_right)
	draw_set_color(c_white)
	draw_text_transformed(375,y+9,string(global.bombTimer),1,1,0)
}