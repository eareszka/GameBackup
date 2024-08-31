timer=global.timeOfDay

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

show_debug_message(global.timeOfDay)

if room=RM_BROWNSTOWN
{
	if global.timeOfDay<8
	{
		obj_lightingCutout.visible=true
		obj_parentNPC.activated=false
	}
	else
	{
		if instance_exists(obj_dayNightOverlay){instance_destroy(obj_dayNightOverlay)}
		
		var _t_b1=layer_get_id("tBUILDINGS1")
	
		var _t_b2=layer_get_id("tBUILDINGS2")
	
		var _t_o1=layer_get_id("tOVERWORLD1")
	
		var _t_t1=layer_get_id("tTREES1")
	
		var _t_t2=layer_get_id("tTREES2")
	
		var _t_t3=layer_get_id("tTREES3")
	
		layer_set_visible(_t_b1,false)
		
		layer_set_visible(_t_b2,false)
		
		layer_set_visible(_t_o1,false)
		
		layer_set_visible(_t_t1,false)
		
		layer_set_visible(_t_t2,false)
		
		layer_set_visible(_t_t3,false)
	
		obj_lightingCutout.visible=false
		obj_parentNPC.activated=true
		inst_779021A6.activate=true
		inst_4EE7D08.activate=true
		inst_1FA32AC4.activate=true
		inst_12259BFD.activate=true
	}
}	

if room=RM_EMORY
{
	if global.timeOfDay<8
	{
		
		obj_lightingCutout.visible=true
	}
	else
	{	
		if instance_exists(obj_dayNightOverlay){instance_destroy(obj_dayNightOverlay)}
		obj_lightingCutout.visible=false
	}
}

if room=RM_ANAHhouse1
{
	if global.timeOfDay<8&&global.flag[41]=0
	{
		inst_4B466D20.activate=false
	}
	else
	{
		inst_4B466D20.activate=true
	}
}

if room=RM_HOSPITALbrownsTown
{
	if global.timeOfDay<8
	{
		
	}
	else
	{
		instance_destroy(inst_5E5924C0)
		instance_destroy(inst_752F097B)
	}	
}

show_debug_message(global.timeOfDay)