if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.bosses.jennaBoss],
			), 
			spr_battleBackground5,
			battle2,
			true,
			,self
		);
	}
}