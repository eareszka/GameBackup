if global.flag[0]<1
{
	if keyboard_check_pressed(vk_space)
	{
		create_cutscene("emoryIntro")
		global.flag[0]=1
	}
}

if global.flag[0]=1&&!instance_exists(oCutscene){instance_destroy()}


//for day and night
if global.timeOfDay<8
{
	if room=RM_EMORY||room=RM_BROWNSTOWN
	{
		image_blend=merge_color(c_navy,c_white,.5)
	}
}