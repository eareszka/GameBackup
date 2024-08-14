if (!instance_exists(oMainMenu)) && !instance_exists(obj_textBox)
{
	if (global.escapeImmunity <= 0)
	{
	    if (room == RM_BROWNSTOWN)
	    {		
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
		}
		if (room == RM_HOTELvent1)&&obj_playerEmory.blown=false
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
		}
		if (room == RM_HOTELvent2)&&obj_playerEmory.blown=false
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
		}
	    if (room == RM_BROWNSTOWNcave)
	    {	
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
	    }
		if (room == RM_FINfarm)
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
	    }
	    if (room == RM_CATACOMBS)
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
	    }
		if (room == RM_PLAINVILL)
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
	    }
		if (room == RM_MOUNTAINS)
	    {
			global.escapeImmunity=1
			instance_create_depth(obj_playerEmory.x+8,obj_playerEmory.y-20,-16000,oExclamationMark)
			alarm[0] = room_speed *.5
	    }
	}
}

