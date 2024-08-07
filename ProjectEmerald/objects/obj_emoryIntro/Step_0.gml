if global.flag[0]<1
{
	if keyboard_check_pressed(vk_space)
	{
		create_cutscene("emoryIntro")
		global.flag[0]=1
	}
}

if global.flag[0]=1&&!instance_exists(oCutscene){instance_destroy()}