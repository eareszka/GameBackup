if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					//[global.enemies.thunderBird,global.enemies.notDeer,global.enemies.thunderBird],
					[global.bosses.magician],
			), 
			spr_battleBackground4,
			battle2,
			true,
			,self
		);
	}
}