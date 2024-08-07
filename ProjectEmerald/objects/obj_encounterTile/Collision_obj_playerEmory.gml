if (!instance_exists(oMainMenu)) && !instance_exists(obj_textBox)
{
	if (global.escapeImmunity <= 0)
	{
	    if (room == RM_BROWNSTOWN)
	    {
			var _rate = encounterRate(1)
	        if (random(1000) < _rate)
	        {		
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
		}
		if (room == RM_HOTELvent1)&&obj_playerEmory.blown=false
	    {
			var _rate = encounterRate()
	        if (random(1000) < _rate)
	        {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
		}
		if (room == RM_HOTELvent2)&&obj_playerEmory.blown=false
	    {
			var _rate = encounterRate()
	        if (random(1000) < _rate)
	        {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
		}
	    if (room == RM_BROWNSTOWNcave)
	    {
			var _rate = encounterRate()
			if (random(1000) < _rate)
	        {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
	    }
		if (room == RM_FINfarm)
	    {
			var _rate = encounterRate()
			if (random(1000) < _rate)
		    {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
	    }
	    if (room == RM_CATACOMBS)
	    {
			var _rate = encounterRate()
			if (random(1000) < _rate)
	        {
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
	    }
		if (room == RM_PLAINVILL)
	    {
			var _rate = encounterRate()
			if (random(1000) < _rate)
	        {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
	    }
		if (room == RM_MOUNTAINS)
	    {
			var _rate = encounterRate()
			if (random(1000) < _rate)
	        {	
				global.escapeImmunity=1
				instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
				alarm[0] = room_speed *.5
			}
	    }
	}
}

show_debug_message(global.enemyKills[0])
