if (room == RM_BROWNSTOWN)
{
	NewEncounter(
	choose
	(
	[global.enemies.ant],
	[global.enemies.catTails],
	[global.enemies.ant],
	[global.enemies.ant],
	[global.enemies.ant,global.enemies.catTails],
	[global.enemies.ant,global.enemies.catTails],
	[global.enemies.ant,global.enemies.catTails,global.enemies.ant],
	), 
	spr_battleBackground2,
	battle1,
	false
	);
}
