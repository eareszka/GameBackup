ObjDepth(self,obj_playerEmory,0,10)

if flying
{
	cutscene_setSprite(oHelicopter,spr_helicopter,1,7)	
}
else
{
	image_index=0	
}

if persuit&&n<320
{
	x = circle_center_x + lengthdir_x(radius_of_circle, n);
	y = circle_center_y + lengthdir_y(radius_of_circle, n);
	n += movement_speed;	
}

show_debug_message(n)
