if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.enemies.nightcrawler],
			), 
			spr_battleBackground4,
			battle2,
			true,
			,self
		);
	}
}