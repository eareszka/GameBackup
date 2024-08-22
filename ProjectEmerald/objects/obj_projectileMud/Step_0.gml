event_inherited();

if image_alpha<1{image_alpha+=.025}
image_angle+=1



if destroy&&!miss
{
	if image_xscale>0{image_xscale-=.01}
	if image_yscale>0{image_yscale-=.01}
	
	image_index=1
	image_blend = c_lime	
	image_alpha-=.25
}
else
{
	image_index=0	
}


if miss&&!destroy
{
	image_index=1
	image_blend = c_red
	image_alpha-=.1
}

if image_alpha<0
{
	instance_destroy()
}