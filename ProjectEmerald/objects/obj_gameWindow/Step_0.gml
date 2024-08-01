if !fullscreen
{
	if keyboard_check(vk_alt)
	{
		if keyboard_check_pressed(vk_enter)
		{
			alarm[0]=1
		}
	}
	if keyboard_check(vk_enter)
	{
		if keyboard_check_pressed(vk_alt)
		{
			alarm[0]=1
		}
	}
}

if fullscreen
{
	if keyboard_check(vk_alt)
	{
		if keyboard_check_pressed(vk_enter)
		{
			alarm[1]=1
		}
	}
	if keyboard_check(vk_enter)
	{
		if keyboard_check_pressed(vk_alt)
		{
			alarm[1]=1
		}
	}
}