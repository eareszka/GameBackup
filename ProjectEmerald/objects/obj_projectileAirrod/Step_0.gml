event_inherited()

if image_alpha<1{image_alpha+=.025}



if destroy&&!miss
{
	image_index=1
	image_blend = c_lime	
	image_alpha-=.1
}
else
{
	image_index=0	
}


if miss&&!destroy
{
	path_end()
	image_xscale=.3
	image_yscale=.3
	image_index=1
	image_blend = c_red
	image_alpha-=.1
}

if image_alpha<0
{
	instance_destroy()
}

if !destroy&&!miss
{
	image_xscale = .3+sin(current_time / 200);	
}
