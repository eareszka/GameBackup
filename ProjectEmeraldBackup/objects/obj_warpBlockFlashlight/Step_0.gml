if(global.quest.annasFlashLight.available == true)
{
	if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut)
	{
		global.escapeImmunity = 2500
		instance_create_depth(0,0,-9999,oFadeIn)
		if alarm[0] == -1 
		{
			alarm[0] = room_speed*.2
		}
	}
}
