event_inherited()

if room=RM_BROWNSTOWN
{
	opponent=choose(global.enemies.frog,global.enemies.ant,global.enemies.catTails)
}

switch opponent.unitID
{
	case 6:
		sprite_index=spr_visualEncounterFrog
	break
	
	case 7:
		sprite_index=spr_visualEncounterFrog
	break
	
	case 8:
		sprite_index=spr_visualEncounterFrog
	break
}

moveSpeed=1.5

checkColl1=true
checkColl2=true