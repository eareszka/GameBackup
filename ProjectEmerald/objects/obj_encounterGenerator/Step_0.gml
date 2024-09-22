if room=RM_BROWNSTOWN&&global.timeOfDay>=8
{
	ene1=global.enemies.frog
	ene2=global.enemies.frog
	ene3=global.enemies.catTails
	
	if !doOnce createEnemies()
}
if room=RM_BROWNSTOWNcave
{
	ene1=global.enemies.scalyFeline
	ene2=global.enemies.rock
	ene3=global.enemies.rock
	
	if !doOnce createEnemies()
}