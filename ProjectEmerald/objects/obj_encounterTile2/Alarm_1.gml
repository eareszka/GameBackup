if (room == RM_BROWNSTOWN)
{
	if global.timeOfDay>=8
	{
		NewEncounter(
		choose
		(
		[global.enemies.ant],
		[global.enemies.frog],
		[global.enemies.ant,global.enemies.frog],
		[global.enemies.frog,global.enemies.ant],
		), 
		spr_battleBackground2,
		battle1,
		false
		);
	}
}
