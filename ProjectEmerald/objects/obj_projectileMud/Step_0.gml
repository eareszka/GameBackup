event_inherited();

y+=1
if image_alpha<1{image_alpha+=.025}
image_angle+=1



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
	image_index=1
	image_blend = c_red
	image_alpha-=.1
}

if image_alpha<0
{
	instance_destroy()
}