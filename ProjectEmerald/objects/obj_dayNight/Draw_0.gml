if (drawDaylight)
{
	var _c = lightColor
	if !surface_exists(lighting_surface)
	{
		lighting_surface=surface_create(room_width,room_height)	
	}
	surface_set_target(lighting_surface)

	draw_clear_alpha(_c,darkness)

	surface_reset_target()

	draw_surface(lighting_surface,0,0)

	if global.timeOfDay<8
	{
		with obj_lightingCutout
		{
			var _wobblex = image_xscale
			var _wobbley = image_yscale
	
			gpu_set_blendmode(bm_subtract)
	
			gpu_set_blendmode(bm_add)
	
			draw_sprite_ext(spr_gradiantCutout,image_index,x,y,_wobblex,_wobbley,0,c_silver,.6)
	
			gpu_set_blendmode(bm_normal)
		}
	}
	
	if instance_exists(oBossDropEmerald)
	{
		with oBossDropEmerald
		{
			var _wobblex = image_xscale
			var _wobbley = image_yscale
	
			gpu_set_blendmode(bm_subtract)
	
			gpu_set_blendmode(bm_add)
			
			draw_sprite_ext(spr_gradiantCutout,image_index,x+7,y+7,_wobblex,_wobbley,0,c_teal,.6)
	
			draw_self()
	
			gpu_set_blendmode(bm_normal)
		}
	}
}