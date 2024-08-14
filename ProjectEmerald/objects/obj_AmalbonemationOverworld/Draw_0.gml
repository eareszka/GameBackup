if !done
{
	//head
	draw_sprite(spr_bonePile,0,x,y)

	//rib
	draw_sprite(spr_bonePile,2,x+ribx,y+riby)

	//leg1
	draw_sprite(spr_bonePile,1,x+leg1x,y+leg1y)

	//leg2
	draw_sprite(spr_bonePile,1,x+leg2x,y+leg2y)

	//leg3
	draw_sprite_ext(spr_bonePile,1,x+leg3x,y+leg3y,-1,1,0,c_white,1)

	//leg4
	draw_sprite_ext(spr_bonePile,1,x+leg4x,y+leg4y,-1,1,0,c_white,1)
}
else
{
	draw_self()	
}




if flash > 0
{
	flash-=subtract
	shader_set(shd_flasher)
	
	r = shader_get_uniform(shd_flasher, "_red")
	g = shader_get_uniform(shd_flasher, "_green")
	b = shader_get_uniform(shd_flasher, "_blue")
	alpha = shader_get_uniform(shd_flasher, "_alpha")
	shader_set_uniform_f(r,red)
	shader_set_uniform_f(g,green)
	shader_set_uniform_f(b,blue)
	shader_set_uniform_f(alpha,flash)
	
	draw_self()
	shader_reset()
}