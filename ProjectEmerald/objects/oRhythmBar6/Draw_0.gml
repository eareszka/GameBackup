draw_self()

//draws box over targets
for(var i=0;i<array_length(spaceArr);i++)
{
	var _possibleTargets = array_filter
	(oBattle.enemyUnits, function(_unit)
	{
		return (_unit.hp > 0)
	});
	if spaceArr[0].hit=true
	{
		_possibleTargets[0].scatterSelected=true
		ObjFlash(_possibleTargets[0],1,.025,0,80.4,0)
	}
	if array_length(spaceArr)>1
	{
		if spaceArr[1].hit=true
		{
			_possibleTargets[1].scatterSelected=true
			ObjFlash(_possibleTargets[1],1,.025,0,80.4,0)
		}
	}
	if array_length(spaceArr)>2
	{
		if spaceArr[2].hit=true
		{
			_possibleTargets[2].scatterSelected=true
			ObjFlash(_possibleTargets[2],1,.025,0,80.4,0)
		}
	}
}


