if !(instance_exists(obj_emoryIntro))
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