if (escapeDelay == 0) && (!dead)
	{
		//random encounter rate
		if (random(1) < 1) 
		{
		if (room == RM_OSPRINGclub)
		{
		NewEncounter(
			choose(		
				[global.enemies.Smiler],
			), 
			spr_battleBackground1,
			battle1
		);
		instance_destroy();
		} 
		}
}