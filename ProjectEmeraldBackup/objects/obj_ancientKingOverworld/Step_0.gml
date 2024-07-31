if !walk && !die
{
	image_index=0	
}

if walk
{
	image_speed=.2
	cutscene_setSprite(obj_ancientKingOverworld,spr_ancientKingOverworld,1,3)
}

if die && !stop
{
	image_speed=.5
	if image_index>=10
	{
		stop=true
	}
	else
	{
		cutscene_setSprite(obj_ancientKingOverworld,spr_ancientKingOverworld,5,12)	
	}
}

if stop
{
	image_index=10
}

if dead
{
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