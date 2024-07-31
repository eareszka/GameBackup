space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

for(var i=0;i<array_length(spaceArr);i++)
{
	if (place_meeting(x,y,spaceArr[i]))
	{
		if space_key
		{
			spaceArr[i].hit = true
		}
	}
}

if keyboard_check_pressed(vk_space)
{
	image_index = 1	
}
else
{
	image_index = 0
}

if !lastPass
{
	if array_last(spaceArr).x > camera_get_view_x(view_camera[0])+230
	{
		lastPass = true
	}
}

if lastPass
{
	for(var i = 0; i < array_length(spaceArr); i++)
	{
		if spaceArr[i].hit = true
		{
			array_push(spaceArr2,spaceArr[i])
		}
	}	
	instance_destroy(self)
}

if lastPass
{
	if array_length(spaceArr2) = array_length(spaceArr)
	{
		global.success = 1	
	}
	else
	{
		global.success = 0
	}
}

image_index = 0