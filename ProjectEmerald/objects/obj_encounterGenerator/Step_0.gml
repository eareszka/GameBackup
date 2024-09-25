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
	ene2=global.enemies.scalyFeline
	ene3=global.enemies.rock
	
	if !doOnce createEnemies()
}
if room=RM_HOTELvent1||room=RM_HOTELvent2
{
	ene1=global.enemies.wapaloosie
	ene2=global.enemies.wapaloosie
	ene3=global.enemies.spider
	
	if !doOnce createEnemies()
}
