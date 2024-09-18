event_inherited()

//will only be agro if player is in encounterZone1

if hit&&!dead
{
	obj_encounterMaster.encounter=true
	obj_encounterMaster.opponent=self
}

if point_distance(x,y,obj_playerEmory.x,obj_playerEmory.y)<110
{ 
	activated=true
}
else
{ 
	activated=false
}