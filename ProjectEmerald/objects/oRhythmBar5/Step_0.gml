space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (place_meeting(x,y,oRhythmUnitBoyToy))
{
	if space_key
	{
		oRhythmUnitBoyToy.hit = true
	}
}


if space_key
{	
	image_index = 1
}
else
{
	image_index = 0		
}

x+=3

if x > (camera_get_view_x(view_camera[0])+400)
{
	instance_destroy()
}