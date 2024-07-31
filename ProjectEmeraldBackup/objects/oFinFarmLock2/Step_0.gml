if place_meeting(x,y,obj_playerEmory)
{
	if global.quest.farmKey.available = true
	{
		image_alpha-=.05
		if image_alpha<0
		{
			instance_destroy()	
		}
	}
	
}