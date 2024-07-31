if (escapeDelay == 0) && (!dead)
{
	//random encounter rate
	if (random(1) < 1) 
	{
	if (room == RM_PLAINVILL)
	{
	NewEncounter(
		choose(		
			[global.enemies.car],
		), 
		spr_battleBackground1,
		battle1
	);
	instance_destroy();
	} 
}
}