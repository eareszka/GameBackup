fall=false
gravityAmmount=1

//for day and night
if global.timeOfDay<8
{
	if room=RM_EMORY||room=RM_BROWNSTOWN
	{
		image_blend=merge_color(c_navy,c_white,.5)
	}
}
