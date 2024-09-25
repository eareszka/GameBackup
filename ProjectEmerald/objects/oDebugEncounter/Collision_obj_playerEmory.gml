if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.enemies.teakettler,global.enemies.rock,global.enemies.scalyFeline],
			), 
			spr_battleBackground4,
			battle2,
			true,
			,self
		);
	}
}