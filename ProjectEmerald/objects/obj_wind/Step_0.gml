sprite_index=spr_wind1
y++
image_alpha-=.005
if !flip
{
	image_angle=270
	if y>ystart+100{instance_destroy()}
	else{image_index+=.01}
}
if flip
{
	image_angle=270
	image_yscale=-1
	if y>ystart+100{instance_destroy()}
	else{image_index+=.01}
}

if place_meeting(x,y,obj_playerEmory)
{
	obj_playerEmory.blownTimer=blowDistance
}