if (!instance_exists(oMainMenu))
{
	if (global.escapeImmunity <= 0)
	{
	    if (room == RM_BROWNSTOWN)
	    {
			var _rate = encounterRate(2)
	        if (random(1000) < _rate)
	        {	
				global.escapeImmunity = 1	
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
		}
	}
}