if global.flag[0]<1
{
	sprite_index = emory_sitting
}
if global.flag[0]>=1
{
	sprite_index = emory_wakingUP
	if image_index >= image_number - 1
	{
		instance_destroy(self)
		saveGame()
	}
}
if global.flag[0]<1
{
	if keyboard_check_pressed(vk_space)
	{
		global.flag[0]=1
	}
}