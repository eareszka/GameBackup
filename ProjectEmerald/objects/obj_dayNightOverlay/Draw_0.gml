if !surface_exists(lighting_surface)
{
	lighting_surface=surface_create(sprite_width,sprite_height)	
}
surface_set_target(lighting_surface)

draw_clear_alpha(color,darkness)

surface_reset_target()

draw_surface(lighting_surface,x,y)