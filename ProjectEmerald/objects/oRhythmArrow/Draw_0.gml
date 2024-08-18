if !throwArrow&&!perfectAbsorbed
{
	draw_sprite_ext(sRhythmArrow,subimg,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+13,1,1,0,color,alpha)
}
if throwArrow&&!perfectAbsorbed
{
	draw_sprite_ext(sRhythmArrow,subimg,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+y,1,1,0,color,alpha)
}

if perfectAbsorbed
{
	draw_sprite_ext(sRhythmArrow,subimg,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+y+perfectFailYOffset,1,1,rot,color,alpha)
}