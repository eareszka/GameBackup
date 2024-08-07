sprite_index=spr_wind1
y++
if !flip
{
	image_angle=270
	if y>ystart+windDistance{instance_destroy()}
	else{image_index+=.01}
}
if flip
{
	image_angle=270
	image_yscale=-1
	if y>ystart+windDistance{instance_destroy()}
	else{image_index+=.01}
}

if place_meeting(x,y,obj_playerEmory)
{
	obj_playerEmory.blownTimer=blowDistance
}