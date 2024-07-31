if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && global.flag[26]=0
{
	global.escapeImmunity = 2500
	global.prevRoom = room
	instance_create_depth(0,0,-9999,oFadeIn)
	if alarm[0] == -1 
	{
		alarm[0] = room_speed*.2
	}
}