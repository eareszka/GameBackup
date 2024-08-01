if !dead
{
	NewEncounter(
	choose(		
		[encounter],
	), 
	spr_battleBackground1,
	battle1,
	false
	);
}
else
{
	if instance_exists(oCutscene)
	{
		oCutscene.scene = scene	
	}
}