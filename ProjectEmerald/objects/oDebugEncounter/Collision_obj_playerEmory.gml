if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.enemies.catTails,global.enemies.frog],
			), 
			spr_battleBackground2,
			battle2,
			true,
			,self
		);
	}
}