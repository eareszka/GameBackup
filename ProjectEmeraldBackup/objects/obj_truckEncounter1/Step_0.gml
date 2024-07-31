if(!dead)
{
	if(obj_truckEncounter1.x != -200)
	{
		obj_truckEncounter1.x -=10
	}
	if(obj_truckEncounter1.x = -200)
	{
		obj_truckEncounter1.x = 3010
	}
}

escapeDelay = max(escapeDelay-1, 0);
if (dead) 
{
	image_alpha -= 0.05;
	image_blend = c_red;
	if (image_alpha <= 0) instance_destroy();
}
