if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					//[global.enemies.thunderBird,global.enemies.notDeer,global.enemies.thunderBird],
					[global.enemies.nightcrawler,global.enemies.nightcrawler,global.enemies.nightcrawler],
			), 
			spr_battleBackground1,
			battle2,
			true,
			,self
		);
	}
}