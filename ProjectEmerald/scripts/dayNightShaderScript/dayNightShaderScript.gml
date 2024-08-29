// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dayNightShaderScript(red,green,blue,alpha)
{
	r = shader_get_uniform(dayNightShader, "_red")
	g = shader_get_uniform(dayNightShader, "_green")
	b = shader_get_uniform(dayNightShader, "_blue")
	a = shader_get_uniform(dayNightShader, "_alpha")
	
	shader_set(dayNightShader)
	
	shader_set_uniform_f(r,red)
	shader_set_uniform_f(g,green)
	shader_set_uniform_f(b,blue)
	shader_set_uniform_f(a,alpha)
}

function scr_layer_begin(_layer,_c)
{
	if (event_type == ev_draw)
    {
        if (event_number == ev_draw_normal)
        {
			dayNightShaderScript(50,50,50,.5)
        }
    }
}
function scr_layer_end()
{
	if (event_type == ev_draw)
    {
        if (event_number == ev_draw_normal)
        {
            shader_reset();
        }
    }
}