//timer+=.02
if (drawDaylight)
{
	var _darks,_colors,_pStart,_pEnd
	
	//sunrise
	if (timer > phase.sunrise && timer <= phase.daytime)
	{
		_darks=[maxDarkness,0.2]
		_colors=[merge_color(c_black,c_navy,0.3),c_orange]
		
		_pStart=phase.sunrise
		_pEnd=phase.daytime
	}
	//day
	else if (timer > phase.daytime && timer <= phase.sunset)
	{
		_darks=[0.2,0,0,0,0.2]
		_colors=[c_orange,c_orange,c_white,c_orange,c_orange]
		
		_pStart=phase.daytime
		_pEnd=phase.sunset
	}
	//sunset
	else if (timer > phase.sunset && timer <= phase.nighttime)
	{
		_darks=[maxDarkness,0.2]
		_colors=[c_orange,c_navy,merge_color(c_black,c_navy,0.3)]
		
		_pStart=phase.sunset
		_pEnd=phase.nighttime
	}
	//nightime
	else
	{
		_darks=[maxDarkness,0.5]
		_colors=[merge_color(c_black,(merge_color(c_black,c_navy,0.5)),0.3)]
		
		_pStart=phase.nighttime
		_pEnd=phase.sunrise
		
	}

	//color
	if (_pStart=phase.nighttime){lightColor=_colors[0]}
	else
	{
	var _cc=((timer-_pStart)/(_pEnd-_pStart))*(array_length(_colors)-1)
	var _c1=_colors[floor(_cc)]
	var _c2=_colors[ceil(_cc)]
	
	lightColor = merge_color(_c1,_c2,_cc-floor(_cc))
	
	}
	if (_pStart=phase.nighttime){darkness=_darks[0]}
	else
	{
		//dark
		var _dd=((timer-_pStart)/(_pEnd-_pStart))*(array_length(_darks)-1)
		var _d1=_darks[floor(_dd)]
		var _d2=_darks[ceil(_dd)]
	
		darkness = merge_number(_d1,_d2,_dd-floor(_dd))
	}
}