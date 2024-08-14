if !walk
{
	cutscene_setSprite(oTheCoachOverworld,sTheCoachOverworld,0,2)	
}
if walk
{
	cutscene_setSprite(oTheCoachOverworld,sTheCoachOverworld,2,4)	
}

if dead
{
	image_index = 9
	timer--
	if timer<0
	{
		image_blend = c_red;
		image_alpha -= 0.01	
		if image_alpha<0
		{
			instance_destroy(self)
		}
	}
}