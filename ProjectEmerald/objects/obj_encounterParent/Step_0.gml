var cam = view_camera[0];
var x1 = camera_get_view_x(cam)-sprite_get_width(sprite_index);
var y1 = camera_get_view_y(cam)-sprite_get_height(sprite_index);
var x2 = x1 + camera_get_view_width(cam)+sprite_get_width(sprite_index);
var y2 = y1 + camera_get_view_height(cam)+sprite_get_height(sprite_index);
if( !point_in_rectangle( x, y, x1, y1, x2, y2)) { instance_destroy(); }

dir = point_direction(x,y,obj_playerEmory.x,obj_playerEmory.y)

hSpeed= lengthdir_x(hFast,dir)
vSpeed= lengthdir_y(vFast,dir)

if layer_exists("tcCOLL")
{
	if tile_meeting(x + hSpeed, y, "tcCOLL", obj_precise_tile_checker) == true
	{
		hSpeed = 0		
		if vFast<3	
		{vFast+=.5}
	}
	else
	{
		vFast=1
	}
	if tile_meeting(x, y + vSpeed, "tcCOLL", obj_precise_tile_checker) == true
	{
		vSpeed = 0	
		
		if hFast<3	
		{hFast+=.5}
	}
	else
	{
		hFast=1
	}
}

x+=hSpeed*moveSpeed
y+=vSpeed*moveSpeed


if vSpeed<0
{
	if hSpeed<vSpeed sprite_index=lSprite
	else sprite_index=bSprite		
}
if vSpeed>0
{
	if hSpeed>vSpeed sprite_index=rSprite
	else sprite_index=fSprite		
}