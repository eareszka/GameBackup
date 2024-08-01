if(!dead)
	{
		if distance_to_object(obj_playerEmory) < range {
			move_towards_point(obj_playerEmory.x,obj_playerEmory.y,spd)
		}
	}
	escapeDelay = max(escapeDelay-1, 0);
	if (dead) 
	{
		image_alpha -= 0.05;
		image_blend = c_red;
		if (image_alpha <= 0) instance_destroy();
	}

