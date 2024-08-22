hp=global.EcurrentHP
hpMax=20+global.hpAdd

draw_sprite_stretched(spr_healthAmmount,0,x,y,((hp/hpMax)*healthBarWidth),healthBarHeight)
draw_sprite(spr_healthBorder,0,x,y)