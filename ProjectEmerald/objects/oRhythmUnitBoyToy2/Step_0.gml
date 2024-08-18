if !set
{
	x += xPos
	set = true
}

if !hit
{
	image_index = 0
}

if hit
{
	image_index = 1
	
	if y < camera_get_view_y(view_camera[0])-5
	{
		fall = true	
	}
	
	if !fall
	{
		gravity = 0.5;
	}
	if fall
	{
		gravityAmmount += .15
		gravity = gravityAmmount;	
	}
	direction = random_range(85,95);
	speed = 1.5;
}

if y > camera_get_view_y(view_camera[0])+200&&!instance_exists(oRhythmUnitBoyToy)
{
	oBattle.battleStopFlow=false
}

if !hit
{
	if instance_exists(oRhythmBar5)
	{
		if oRhythmBar5.miss=true
		{
			if image_alpha > 0
			{
				oBattle.battleStopFlow=false
				image_alpha -= .1	
			}
		}
	}
}

