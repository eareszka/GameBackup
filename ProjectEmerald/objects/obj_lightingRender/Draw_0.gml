if !surface_exists(lighting_surface)
{
	lighting_surface=surface_create(room_width,room_height)	
}

surface_set_target(lighting_surface)

if room = RM_EMORYcave{draw_clear_alpha(c_black,.3)}
if room = RM_CRAWLSPACE1{draw_clear_alpha(c_black,.3)}
if room = RM_CRAWLSPACE2{draw_clear_alpha(c_black,.3)}
if room = RM_CRAWLSPACE3{draw_clear_alpha(c_black,.3)}
if room = RM_CRAWLSPACE4{draw_clear_alpha(c_black,.3)}
if room = RM_HOTELtop{draw_clear_alpha(c_black,.3)}
if room = RM_CATACOMBS{draw_clear_alpha(c_black,.3)}


with obj_lightingCutout
{
	var _wobblex = image_xscale + random_range(-wobble,wobble)
	var _wobbley = image_yscale + random_range(-wobble,wobble)
	
	gpu_set_blendmode(bm_subtract)
	draw_sprite_ext(spr_gradiantCutout,image_index,x,y,_wobblex,_wobbley,0,c_white,1)
	
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_gradiantCutout,image_index,x,y,_wobblex,_wobbley,0,color,intensity)
	
	gpu_set_blendmode(bm_normal)
}

surface_reset_target()

draw_surface(lighting_surface,0,0)