if (global.escapeImmunity == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
		NewEncounter(
			choose(	
					[global.enemies.mogMole,global.enemies.teakettler,global.enemies.beetle],
			), 
			spr_battleBackground5,
			battle2,
			true,
			,self
		);
	}
}