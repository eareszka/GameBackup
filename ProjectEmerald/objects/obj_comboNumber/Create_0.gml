visible=false
xscale=1.25
yscale=1.25

moveTo=false
fade=false

if !dance
{
	x=camera_get_view_x(view_camera[0])+130
	y=camera_get_view_y(view_camera[0])+45
}
if dance
{
	x=obj_playerEmory.x+6
	y=obj_playerEmory.y-20
}