if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
{
	if keyboard_check(vk_space)
	{
		if before_face != -1 obj_playerEmory.face = before_face
		global.prevRoom = room
		global.escapeImmunity = 2500
		instance_create_depth(0,0,-9999,oFadeIn)
		if alarm[0] == -1 
		{
			alarm[0] = room_speed*.2
		}
	}
}
