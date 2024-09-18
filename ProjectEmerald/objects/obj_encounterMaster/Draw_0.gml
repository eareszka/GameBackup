if encounter
{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_text_transformed(obj_playerEmory.x,obj_playerEmory.y,string(global.comboAmmount)+"x",xscale,yscale,0)
}