if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.enemies.spider,global.enemies.spider],
			), 
			spr_battleBackground1,
			battle2,
			true,
			,self
		);
	}
}