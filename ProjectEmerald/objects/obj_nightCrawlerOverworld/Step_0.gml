if !instance_exists(oCutscene)
{
	image_index=0
	image_speed=0
}


if walking
{
	image_speed=2
	sprite_index=spr_nightCrawlerOverworldWalking
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
else
{
	image_blend=merge_color(c_navy,c_white,.5)	
}