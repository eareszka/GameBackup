event_inherited();


//outline during dodge phase
if dodgePhase&&instance_exists(obj_defendProjectileParent)
{
	if outlineAlpha<1
	{outlineAlpha+=.05}
}
else
{
	if outlineAlpha>0
	{outlineAlpha-=.05}
}

draw_sprite_ext(sprites.defendOutline,image_index,x,y,1,1,0,color,outlineAlpha)	