if timer > 0
{
	var _range = 1
	camera_set_view_pos(view_camera[0], view_x+random_range(-_range,_range), view_y+random_range(-_range,_range))
	timer -= 1
}
else
{
	instance_destroy()
}

