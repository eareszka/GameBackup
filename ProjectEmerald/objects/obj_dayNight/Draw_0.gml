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
	
	with obj_dayNightOverlay
	{
		color=other.lightColor
		darkness=other.darkness
	}
	
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
		with obj_playerEmory
		{
			if !instance_exists(obj_emoryIntro)&&!instance_exists(obj_emoryFall)
			{
				gpu_set_blendmode(bm_subtract)
			
				draw_self()
	
				gpu_set_blendmode(bm_add)
			
				draw_self()
	
				gpu_set_blendmode(bm_normal)
			}
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
	
	//if layer_exists("tBUILDINGS1")
	//{
	//	var _t_b1=layer_get_id("tBUILDINGS1")
	//}
	if global.timeOfDay<8
	{
		var _t_b1=layer_get_id("tBUILDINGS1")
	
		var _t_b2=layer_get_id("tBUILDINGS2")
	
		var _t_o1=layer_get_id("tOVERWORLD1")
	
		var _t_t1=layer_get_id("tTREES1")
	
		var _t_t2=layer_get_id("tTREES2")
	
		var _t_t3=layer_get_id("tTREES3")
	
		shader_set(dayNightShader)
	
		layer_shader(_t_b1,dayNightShader)
	
		layer_shader(_t_b2,dayNightShader)
	
		layer_shader(_t_o1,dayNightShader)
	
		layer_shader(_t_t1,dayNightShader)
	
		layer_shader(_t_t2,dayNightShader)
	
		//layer_shader(_t_t3,dayNightShader)
	
		var _r=color_get_red(_c)
		var _g=color_get_green(_c)
		var _b=color_get_blue(_c)
		
		dayNightShaderScript(_r/255,_g/255,_b/255,darkness)
	
		shader_reset()
	}
}