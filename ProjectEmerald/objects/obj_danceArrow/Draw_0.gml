if !throwArrow
{
	draw_sprite_ext(sRhythmArrow,subimg,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+13,1.25,1.25,0,color,alpha)
}
if throwArrow
{
	draw_sprite_ext(sRhythmArrow,subimg,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+y,1.25,1.25,0,color,alpha)
}