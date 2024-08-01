draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text_transformed(x,y,string(global.comboAmmount)+"x",xscale,yscale,0)

if xscale>1.25{xscale-=.1}
if yscale>1.25{yscale-=.1}