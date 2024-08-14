var _c = lightColor
if !surface_exists(lighting_surface)
{
	lighting_surface=surface_create(room_width,room_height)	
}
surface_set_target(lighting_surface)

draw_clear_alpha(_c,darkness)

with obj_playerEmory
{
	gpu_set_blendmode(bm_subtract)

	//gpu_set_blendmode(bm_add)
	
	gpu_set_blendmode(bm_normal)
}

surface_reset_target()

draw_surface(lighting_surface,0,0)